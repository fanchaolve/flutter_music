import 'package:flutter/material.dart';
import 'package:flutter_app/widget/widget_music_list_head.dart';

import 'flexible_detail_bar.dart';

class PlayListAppBarWidget extends StatelessWidget {
  final double expandedHeight;
  final String title;

  PlayListAppBarWidget({@required this.expandedHeight, @required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: expandedHeight,
      pinned: true,
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.green),
      title: Text(title,
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold),
      ),
      bottom: MusicListHeader(),
      flexibleSpace: FlexibleDetailBar(
        background: null,
      ),
    );
  }
}
