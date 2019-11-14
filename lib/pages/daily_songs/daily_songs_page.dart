import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/model/daily_songs_data.dart';
import 'package:flutter_app/model/music.dart';
import 'package:flutter_app/utils/net_utils.dart';
import 'package:flutter_app/widget/widget_muisc_list_item.dart';
import 'package:flutter_app/widget/widget_play_list_app_bar.dart';
import 'package:flutter_app/widget/widget_sliver_future_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailySongsPage extends StatefulWidget {
  @override
  _DailySongsPageState createState() => _DailySongsPageState();
}

class _DailySongsPageState extends State<DailySongsPage> {
  double _expandedHeight = ScreenUtil().setWidth(340);

 int _count;
  void setCount(int count) {
    Future.delayed(Duration(microseconds: 300),(){
      setState(() {
        _count = count;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        print('点击返回了');
        Navigator.pop(context);
      },

      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            PlayListAppBarWidget(

              title: '每日推荐',
              count: _count,
              backgroundImg: 'images/bg_daily.png',
              expandedHeight: _expandedHeight,
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
                    margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(5)),
                    child: Text(
                        '${DateUtil.formatDate(DateTime.now(), format: 'MM:dd')}'),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(40)),
                    margin: EdgeInsets.only(bottom: ScreenUtil().setWidth(20)),
                    child: Text(
                      '根据你的音乐口味，为你推荐好音乐。',
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  )
                ],
              ),
            ),
            CustomSliverFutureBuilder<DailySongsData>(
              futureFunc: NetUtils.getDailySongsData,
              builder: (BuildContext context,DailySongsData data){
                setCount(data.recommend.length);
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (context, index) {
                      var d = data.recommend[index];
                      return WidgetMusicListItem(MusicData(
                          mvid: d.mvid,
                          picUrl: d.album.picUrl,
                          songName: d.name,
                          artists:
                          "${d.artists.map((a) => a.name).toList().join('/')} - ${d.album.name}"));
                    },
                    childCount: data.recommend.length,
                  ),
                );
              },

            )
          ],
        ),
      ),
    );
  }
}
