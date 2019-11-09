
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/provider/user_provider.dart';
import 'package:flutter_app/utils/navigator_utils.dart';
import 'package:flutter_app/widget/net_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../application.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin{


  AnimationController _logoController;
  CurvedAnimation _logoAnimation;
  Tween _scaleTween;


  @override
  void initState() {

    _scaleTween = Tween(begin: 0,end: 1);
    _logoController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
      
    )..drive(_scaleTween)
    ;

    Future.delayed(Duration(milliseconds: 500),(){
      _logoController.forward();
    });
    _logoAnimation = CurvedAnimation(
      parent: _logoController,
      curve: Curves.easeOutQuart,
    );

    _logoController.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Future.delayed(Duration(milliseconds: 500),(){
          goPage();
        });
      }
    });
    super.initState();


  }

  void goPage()async{
    await Application.initSp();
    UserProvide userProvide = Provider.of<UserProvide>(context);
    userProvide.initUser();
    if(userProvide.user != null){
      await NetUtils.refreshLogin(context).then((value){
        if(value.data != -1){
          NavigatorUtil.goHomePage(context);
        }
      });
    }else{
      NavigatorUtil.goLoginPage(context);
    }


  }



  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750,height: 1334)..init(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(

      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ScaleTransition(
          scale: _logoAnimation,
          child: Hero(
            tag: 'logo',
            child: Image.asset('images/icon_logo.png'),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _logoController.dispose();
    super.dispose();
  }
}
