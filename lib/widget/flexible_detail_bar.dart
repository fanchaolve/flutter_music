import 'package:flutter/material.dart';

class FlexibleDetailBar extends StatelessWidget {


  final Widget background;

  final Widget content;

  final Widget Function(BuildContext context,double t) builder;


  static double percentage(BuildContext context) {
    _FlexibleDetail value =
    context.inheritFromWidgetOfExactType(_FlexibleDetail);
    assert(value != null, 'ooh , can not find');
    return value.t;
  }

  FlexibleDetailBar({
    Key key,
    @required this.background,
    @required this.content,
    this.builder,
  })
      :assert(content != null),
        assert(background != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final FlexibleSpaceBarSettings settings =
    context.inheritFromWidgetOfExactType(FlexibleSpaceBarSettings);
    final List<Widget>children = <Widget>[];

    final double deltaExtent = settings.maxExtent - settings.minExtent;

    final double t = (1.0 -
        (settings.currentExtent - settings.minExtent) / deltaExtent)
        .clamp(0.0, 1.0);
    children.add(Positioned(
      top: -Tween<double>(begin: 0.0, end: deltaExtent / 4.0).transform(t),
      left: 0,
      right: 0,
      height: settings.maxExtent,
      child: background,
    ));


    //为content 添加 底部的 padding
    double bottomPadding = 0;
    SliverAppBar sliverAppBar = context.ancestorWidgetOfExactType(SliverAppBar);
    if (sliverAppBar != null && sliverAppBar.bottom != null) {
      bottomPadding = sliverAppBar.bottom.preferredSize.height;
    }
    children.add(Positioned(
      top: settings.currentExtent - settings.maxExtent,
      left: 0,
      right: 0,
      height: settings.maxExtent,
      child: Opacity(
        opacity: 1 - t,
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomPadding),
          child: Material(
            child: DefaultTextStyle(
              style: Theme
                  .of(context)
                  .primaryTextTheme
                  .body1,
              child: content,

            ),
            elevation: 0,
            color: Colors.transparent,
          ),
        ),
      ),
    ));

    if(builder != null)
      children.add(Column(
        children: <Widget>[
          builder(context,t)
        ],
      ));

    return _FlexibleDetail(t, child: ClipRect(
      child: DefaultTextStyle(
        style: Theme.of(context).primaryTextTheme.body1,
        child: Stack(children: children,fit: StackFit.expand,),
      ),
    ));
  }
}

class _FlexibleDetail extends InheritedWidget {

  final double t;

  const _FlexibleDetail(this.t, {
    Key key,
    @required Widget child,
  })
      : assert(child != null),
        super(key: key, child: child);

  static _FlexibleDetail of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(
        _FlexibleDetail) as _FlexibleDetail;
  }

  @override
  bool updateShouldNotify(_FlexibleDetail old) {
    return t != old.t;
  }
}


class FlexShadowBackground extends StatelessWidget {

  final Widget child;

  const FlexShadowBackground({Key key, this.child}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    var t = FlexibleDetailBar.percentage(context);
    print("t之前===>$t");
    t = Curves.easeIn.transform(t) / 2 + 0.2;
    print('t之后====>$t');
    return Container(
      foregroundDecoration: BoxDecoration(
          color: Colors.black.withOpacity(t)
      ),
      child: child,
    );
  }
}

