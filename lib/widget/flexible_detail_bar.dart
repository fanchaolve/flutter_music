
import 'package:flutter/material.dart';
class FlexibleDetailBar extends StatelessWidget {


  final Widget background;

  FlexibleDetailBar({@required this.background});

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings settings=
        context.inheritFromWidgetOfExactType(FlexibleSpaceBarSettings);
    final List<Widget>children = <Widget>[];
    final double deltaExtent =settings.maxExtent - settings.minExtent;

    final double t = ( 1.0 - (settings.currentExtent - settings.minExtent)/deltaExtent)
    .clamp(0.0, 1.0);
    children.add(Positioned(
      top: -Tween<double>(begin: 0.0,end: deltaExtent/4.0).transform(t),
      left: 0,
      right: 0,
      height: settings.maxExtent,
      child: background,
    ));
    children.add(Positioned(
      top: settings.currentExtent - settings.maxExtent,
      left: 0,
      right: 0,
      height: settings.maxExtent,
    ));
    return Container();
  }
}
