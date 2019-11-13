
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/widget_music_list_head.dart';

import 'flexible_detail_bar.dart';

class PlayListAppBarWidget extends StatelessWidget {
  final double expandedHeight;
  final String title;
  final String backgroundImg;
  final Widget content;
  final double sigma;

  PlayListAppBarWidget({
    @required this.expandedHeight,
    @required this.title,
    @required this.backgroundImg,
    @required this.content,
    this.sigma = 5
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      expandedHeight: expandedHeight,
      pinned: true,
      elevation: 0,
      brightness: Brightness.dark,
      iconTheme: IconThemeData(color: Colors.green),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      bottom: MusicListHeader(),
      flexibleSpace: FlexibleDetailBar(
        content: content,
        background: Stack(
          children: <Widget>[
            backgroundImg.startsWith('http') ? Utils.showNetImage(backgroundImg,
              width: double.infinity,
              height: double.infinity,fit: BoxFit.cover):
            Image.asset(
              backgroundImg,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: sigma,
                sigmaX: sigma,
              ),
              child: Container(
                color: Colors.black38,
                width: double.infinity,
                height: double.infinity,
              ),
            )
          ],
        ),
      ),
    );
  }
}
