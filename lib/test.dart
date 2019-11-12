import 'package:flutter/material.dart';

class MyTestapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          splashColor: Colors.transparent),
      home: MyPre(),
    );
  }
}

class MyPre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Demo'),
              background: Image.network(
                  'https://p0.meituan.net/wedding/b3349e4eac515c277933f6f8cbb06b1650345.jpg%40960w_300h_0e_1l%7Cwatermark%3D0'),
            ),
          ),
          SliverGrid(

            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(

                maxCrossAxisExtent: 300.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1.0,

            ),

            delegate: SliverChildBuilderDelegate(
                (context,index){
                  return Container(

                    color: Colors.teal[100 * (index %9)],
                    child: Center(
                      child: Text('the grid item==> ${index}'),
                    ),
                  );
                },
              childCount: 20,
              findChildIndexCallback: (key){
                  print(key);
              }
            ),
          )
        ],
      ),
    );
  }
}
