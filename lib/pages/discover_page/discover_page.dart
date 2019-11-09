
import 'package:flutter/material.dart';
import 'package:flutter_app/widget/net_utils.dart';
import 'package:flutter_app/widget/widget_future_builder.dart';
//import '/model/banner.dart' as mBanner;

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {


  Widget _buildBanner(){
    return CustomFutureBuilder<Banner>(
      futureFunc: NetUtils.getBannerData,

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
