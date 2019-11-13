import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/widget_net_error.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef ValueWidgetBuilder<T> = Widget Function(BuildContext context, T value);

typedef ValueWidgetRequestBuilder<T> = Future<T> Function(BuildContext context,
    {Map<String, dynamic> params});

class CustomSliverFutureBuilder<T> extends StatefulWidget {
  final ValueWidgetBuilder builder;
  final ValueWidgetRequestBuilder futureFunc;
  final Map<String, dynamic> params;

  CustomSliverFutureBuilder({
    @required this.builder,
    @required this.futureFunc,
    this.params,
  });

  @override
  _CustomSliverFutureBuilderState<T> createState() =>
      _CustomSliverFutureBuilderState<T>();
}

class _CustomSliverFutureBuilderState<T>
    extends State<CustomSliverFutureBuilder<T>> {
  Future<T> _future;

  void _request() {
    setState(() {
      if (widget.params == null) {
        _future = widget.futureFunc(context);
      } else {
        _future = widget.futureFunc(context, params: widget.params);
      }
    });
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((call) {
      _request();
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return _future == null
        ? SliverToBoxAdapter(
            child: Container(
              alignment: Alignment.center,
              height: ScreenUtil().setHeight(200),
              child: CupertinoActivityIndicator(),
            ),
          )
        : FutureBuilder(
            future: _future,
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                case ConnectionState.active:
                  return SliverToBoxAdapter();
                case ConnectionState.done:
                  if (snapshot.hasData) {
                    return widget.builder(context, snapshot.data);
                  } else if (snapshot.hasError) {
                    return SliverToBoxAdapter(
                      child: NetErrorWidget(
                        callback: () {
                          _request();
                        },
                      ),
                    );
                  }
              }
              return Container();
            },
          );
  }
}
