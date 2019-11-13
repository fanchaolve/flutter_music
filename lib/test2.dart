import 'package:flutter/material.dart';


class ShareDataWidget extends InheritedWidget {

  final int data;
  const ShareDataWidget({
    Key key,
    @required Widget child,
    this.data
  })
      : assert(child != null),
        super(key: key, child: child);

  static ShareDataWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(ShareDataWidget) as ShareDataWidget;
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return old.data != data;
  }
}

class _TestWidget extends StatefulWidget {
  @override
  __TestWidgetState createState() => __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      ShareDataWidget.of(context).data.toString(),
      style: TextStyle(
        fontSize: 20
      ),
    );
  }
  
  @override
  void didChangeDependencies() {
    print('Dependencies change');
    super.didChangeDependencies();
  }
}

class InheritedWidgetTestRoute extends StatefulWidget {
  @override
  _InheritedWidgetTestRouteState createState() => _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShareDataWidget(
        data:count ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding:const EdgeInsets.only(bottom: 20.0),
                child: _TestWidget(),
              ),
              RaisedButton(
                child: Text("Increment"),
                onPressed: (){
                  setState(() {
                    count++;
                  });
                },
              )
            ],
      )),
    );
  }
}


class MyTest2App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "haha",
      home: Scaffold(
        appBar: AppBar(
          title: Text('测试数据'),
        ),
        body: InheritedWidgetTestRoute(),
      ),
    );
  }
}

