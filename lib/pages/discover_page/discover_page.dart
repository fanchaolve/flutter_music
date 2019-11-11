
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/CustomBanner.dart';
import 'package:flutter_app/widget/net_utils.dart';
import 'package:flutter_app/widget/widget_future_builder.dart';
import 'package:flutter_app/model/banner.dart' as mBanner;

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> with AutomaticKeepAliveClientMixin{



  void updateKeepAlive(){
    super.updateKeepAlive();
    print('updateKeepAlive');
  }

  Widget _buildBanner(){
    return CustomFutureBuilder<mBanner.Banner>(
      futureFunc: NetUtils.getBannerData,
      builder: (BuildContext context, mBanner.Banner banner){
        return CustomBanner(banner.banners.map((value)=>value.pic).toList());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            _buildBanner(),
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void didUpdateWidget(DiscoverPage oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }




}
