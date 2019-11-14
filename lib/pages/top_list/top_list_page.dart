import 'package:flutter/material.dart';
import 'package:flutter_app/model/top_list.dart';
import 'package:flutter_app/utils/net_utils.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/common_text_style.dart';
import 'package:flutter_app/widget/h_empty_view.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_app/widget/widget_future_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopListPage extends StatefulWidget {
  @override
  _TopListPageState createState() => _TopListPageState();
}

class _TopListPageState extends State<TopListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          '排行榜',
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: CustomFutureBuilder<TopListData>(
        futureFunc: NetUtils.getTopListData,
        builder: (context, data) {
          var _topList1 = data.list.where((l) {
            return l.tracks.isNotEmpty;
          }).toList();
          var _topList2= data.list.where((l)=> l.tracks.isEmpty).toList();

          int i = 0;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '官方榜',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: _topList1.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin:
                            EdgeInsets.only(top: ScreenUtil().setHeight(20)),
                        padding:
                            EdgeInsets.only(left: ScreenUtil().setWidth(20)),
                        height: ScreenUtil().setWidth(200),
                        child: Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Utils.showNetImage(
                                      _topList1[index].coverImgUrl,
                                      width: ScreenUtil().setWidth(200),
                                      height: ScreenUtil().setWidth(200),
                                      fit: BoxFit.cover),
                                ),
                                Positioned(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    child: Image.asset(
                                      'images/ck.9.png',
                                      width: ScreenUtil().setWidth(200),
                                      height: ScreenUtil().setWidth(80),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  bottom: 0,
                                ),
                                Positioned(
                                  bottom: ScreenUtil().setWidth(10),
                                  left: ScreenUtil().setWidth(30),
                                  child: Text(
                                    _topList1[index].updateFrequency,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            HEmptyView(ScreenUtil().setWidth(20)),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: _topList1[index].tracks.map((value) {
                                  return Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          '${i++}.${value.first}-${value.second}',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: common13TextStyle),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    '更多榜单',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:_topList2.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1 / 1.2),
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Utils.showNetImage(
                                      _topList2[index].coverImgUrl,
                                      width: ScreenUtil().setWidth(200),
                                      height: ScreenUtil().setWidth(200),
                                      fit: BoxFit.cover),
                                ),
                                Positioned(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    child: Image.asset(
                                      'images/ck.9.png',
                                      width: ScreenUtil().setWidth(200),
                                      height: ScreenUtil().setWidth(80),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  bottom: 0,
                                ),
                                Positioned(
                                  bottom: ScreenUtil().setWidth(10),
                                  left: ScreenUtil().setWidth(30),
                                  child: Text(
                                    _topList2[index].updateFrequency,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            VEmptyView(10),
                            Container(
                              child: Text(_topList2[index].name, style: common13TextStyle,),
                              width: ScreenUtil().setWidth(200),),
                          ],
                        ),
                      );
                    }),
              ],
            ),
          );
        },
      ),
    );
  }
}
