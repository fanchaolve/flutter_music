
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/net_utils.dart';
import 'package:flutter_app/widget/widget_future_builder.dart';
import 'package:flutter_app/model/banner.dart' as mBanner;

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {


  Widget _buildBanner(){
    return CustomFutureBuilder<mBanner.Banner>(
      futureFunc: NetUtils.getBannerData,
      builder: (context,data){
        return null;
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

          ],
        ),
      ),
    );
  }
}
