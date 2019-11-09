import 'package:flutter/material.dart';
import 'package:flutter_app/pages/discover_page/discover_page.dart';
import 'package:flutter_app/pages/my/my_page.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{



  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync:this,length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          elevation: 0,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(150),
                  ),
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold

                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 14
                    ),
                    indicator: UnderlineTabIndicator(),
                    controller: _tabController,
                    tabs: <Widget>[
                      Tab(
                        text: '发现',
                      ),
                      Tab(
                        text: '我的',
                      ),
                      Tab(
                        text: '动态',
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: ScreenUtil().setWidth(20),
                  child: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: ScreenUtil().setWidth(50),
                      color: Colors.black87,

                    ),
                    onPressed: (){

                    },
                  ),
                )
              ],
            ),
            VEmptyView(20),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  DiscoverPage(),
                  MyPage(),
                  DiscoverPage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
