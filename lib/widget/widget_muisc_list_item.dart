
import 'package:flutter/material.dart';
import 'package:flutter_app/model/music.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/common_text_style.dart';
import 'package:flutter_app/widget/h_empty_view.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetMusicListItem extends StatelessWidget {
  
  final MusicData _data;
  final VoidCallback onTap;
  
  WidgetMusicListItem(this._data,{this.onTap});
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setWidth(120),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
               width: 0.5,
              color: Colors.grey[200]
            )
          )
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            HEmptyView(15),
            _data.picUrl == null?
                Container():
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                  child: Utils.showNetImage(_data.picUrl,
                  width: ScreenUtil().setWidth(80),
                  height: ScreenUtil().setWidth(80),
                  fit: BoxFit.cover),
                ),
            HEmptyView(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _data.songName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: commonTextStyle,
                  ),
                  VEmptyView(3),
                  Text(
                    _data.artists,
                    style: smallGrayTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.play_circle_outline),
                onPressed: (){},
                color: Colors.grey,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
