import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/model/mv.dart';
import 'package:flutter_app/model/recommend_data.dart';
import 'package:flutter_app/utils/navigator_utils.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/CustomBanner.dart';
import 'package:flutter_app/utils/net_utils.dart';
import 'package:flutter_app/widget/common_text_style.dart';
import 'package:flutter_app/widget/h_empty_view.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_app/widget/widget_future_builder.dart';
import 'package:flutter_app/model/banner.dart' as mBanner;
import 'package:flutter_app/widget/widget_play_list.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {

  void updateKeepAlive() {
    super.updateKeepAlive();
    print('updateKeepAlive');
  }

  Widget _buildBanner() {
    return CustomFutureBuilder<mBanner.Banner>(
      futureFunc: NetUtils.getBannerData,
      builder: (BuildContext context, mBanner.Banner banner) {
        return CustomBanner(banner.banners.map((value) => value.pic).toList());
      },
    );
  }

  Widget _buildCatgorys() {
    var catgoryMap = {
      '每日推荐': 'images/icon_daily.png',
      '歌单': 'images/icon_playlist.png',
      '排行榜': 'images/icon_rank.png',
      '电台': 'images/icon_radio.png',
      '直播': 'images/icon_look.png',
    };

    var keys = catgoryMap.keys.toList();
    var width = ScreenUtil().setWidth(90);
    return GridView.custom(
      padding: EdgeInsets.only(bottom: 10),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      childrenDelegate:
          SliverChildBuilderDelegate((BuildContext cxt, int index) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            switch (index) {
              case 0:
                NavigatorUtil.goSongs(context);
                break;
              case 2:
                NavigatorUtil.goTopList(context);
                break;
            }
          },
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: width,
                    height: width,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      border: Border.all(color: Colors.black12, width: 0.5),
                      borderRadius: BorderRadius.circular(width / 2),
                      gradient: RadialGradient(
                        center: Alignment(-1, 0.6),
                        colors: [
                          Color(0xFFFF8174),
                          Colors.pink,
                        ],
                      ),
                    ),
                  ),
                  Image.asset(
                    catgoryMap[keys[index]],
                    width: width,
                    height: width,
                  ),
                  index == 0
                      ? Container(
                          margin:
                              EdgeInsets.only(top: ScreenUtil().setHeight(9)),
                          child: Text(
                            '${DateUtil.formatDate(DateTime.now(), format: 'dd')}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: ScreenUtil().setSp(20)),
                          ),
                        )
                      : Text(''),
                ],
              ),
              VEmptyView(20),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  keys[index],
                  style: TextStyle(fontSize: ScreenUtil().setWidth(20)),
                ),
              )
            ],
          ),
        );
      }, childCount: keys.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    print('discover_page');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildBanner(),
            VEmptyView(40),
            _buildCatgorys(),
            Container(
              height: 1,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey[100]),
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
              padding:
                  EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
              child: Row(
                children: <Widget>[
                  Text(
                    '推荐歌单',
                    style: TextStyle(
                      fontSize: ScreenUtil().setSp(37),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Text(''),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(20),
                        vertical:
                            ScreenUtil().setHeight(ScreenUtil().setHeight(11))),
                    child: Text(
                      '歌单广场',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey[300], width: 1)),
                  ),

                ],
              ),
            ),
            VEmptyView(20),
            _buildRecommendPlayList(),
            VEmptyView(20),
            _buildNewAlbum(),
            _buildOtherAlbum(),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendPlayList() {
    return CustomFutureBuilder<RecommendData>(
      futureFunc: NetUtils.getRecommendData,
      builder: (context, snapshot) {
        var data = snapshot.recommend;
        return Container(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
         height: ScreenUtil().setHeight(300),
          child: ListView.separated(
              itemBuilder: (context, index) {
                print('==playcount=>${data[index].playcount}');
                return PlayListWidget(
                  picUrl: data[index].picUrl,
                  text: data[index].name,
                  playCount: data[index].playcount,

                );
              },

              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context,index){
                return HEmptyView(ScreenUtil().setWidth(30));
              },
              itemCount: data.length),
        );
      },
    );
  }

  /// 构建新碟上架
  Widget _buildNewAlbum() {
    return CustomFutureBuilder<AlbumData>(
      futureFunc: NetUtils.getAlbumData,
      builder: (context,snapshot){
        var data = snapshot.albums;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
          height: ScreenUtil().setWidth(300),
          child: ListView.separated(

              itemBuilder: (context,index){
                return PlayListWidget(
                  text: data[index].name,
                  picUrl: data[index].picUrl,
                );
              },
              shrinkWrap: true,
              scrollDirection:Axis.horizontal,
              separatorBuilder: (context,index){
                return HEmptyView(ScreenUtil().setWidth(30));
              },
              itemCount: data.length),
        );

      },
    );
  }
  /// 构建新碟上架
  Widget _buildOtherAlbum() {
    return CustomFutureBuilder<MVData>(
      builder: (context,data){
        return ListView.builder(
            shrinkWrap: true,
            itemCount: data.data.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: Utils.showNetImage(data.data[index].cover),
                    ),
                    VEmptyView(5),
                    Text(
                      data.data[index].name,
                      style: commonTextStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    VEmptyView(2),
                    Text(
                      data.data[index].artistName,
                      style: smallGrayTextStyle,
                    )

                  ],
                ),

              );
            });
      },
      futureFunc: NetUtils.getMvTopList,
    );
  }


  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void didUpdateWidget(DiscoverPage oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

}
