import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_style.dart';
import 'h_empty_view.dart';

class MusicListHeader extends StatelessWidget implements PreferredSizeWidget {

  final int count;
  MusicListHeader({this.count});


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(ScreenUtil().setWidth(30)),

      ),
      child: Container(
        width: double.infinity,
         color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 20),
//        child:Row(
//
//          children: <Widget>[
//            Icon(
//              Icons.play_circle_outline,
//              size: ScreenUtil().setWidth(50),
//            ),
//          ],
//        )
      child: SizedBox.fromSize(
        size: preferredSize,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.play_circle_outline,
                size: ScreenUtil().setWidth(50),
              ),
              HEmptyView(20),
              Align(
                child: Text(
                  "播放全部",
                  style: mCommonTextStyle,
                ),
              ),
              HEmptyView(20),
              Align(
                child: count == null?
                    Container():
                    Text(
                      '(共${count}首)',
                      style: smallGrayTextStyle,
                    ),
              ),
            ],
          )
      ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
    Size get preferredSize =>Size.fromHeight(ScreenUtil().setWidth(80));
}
