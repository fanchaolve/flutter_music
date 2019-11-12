
import 'package:flutter/material.dart';
import 'package:flutter_app/utils/number_utils.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 歌单、新碟上架等封面组件
class PlayListCoverWidget extends StatelessWidget {

  final String url;
  final int playCount;

  PlayListCoverWidget(this.url,{this.playCount});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      child: Container(


        child: Stack(

          children: <Widget>[
            Utils.showNetImage(url),
            playCount == null?
                Container():
                Container(
                  color: Colors.black54,
                  height: ScreenUtil().setHeight(40),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: ScreenUtil().setWidth(20)),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.end,
                       
                      children: <Widget>[
                        Image.asset(
                          'images/icon_triangle.png',
                          width: ScreenUtil().setWidth(30),
                          height: ScreenUtil().setWidth(30),
                        ),
                        Text(
                          '${NumberUtils.amountConversion(playCount)}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ,
          ],
        ),
      ),
    );
  }
}
