
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_app/widget/widget_play_list_cover.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_style.dart';

class PlayListWidget extends StatelessWidget {

  final String picUrl;
  final String text;
  final num playCount;

  PlayListWidget({this.picUrl,@required this.text,this.playCount});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      child: Container(
        width: ScreenUtil().setWidth(200),

        child: Column(

          children: <Widget>[
            picUrl == null?
                Container() : PlayListCoverWidget( picUrl,playCount: playCount),

            VEmptyView(5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                text,
                style: smallCommonTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )

          ],
        ),
      ),
    );
  }
}
