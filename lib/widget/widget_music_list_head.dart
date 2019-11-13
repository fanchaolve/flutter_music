import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.symmetric(vertical: 30),
        color: Colors.green,
        width: double.infinity,

        child: Text(
          'fancl111111111',
          style: TextStyle(
            fontSize: 33,
            color: Colors.pink
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
    Size get preferredSize =>Size.fromHeight(80);
}
