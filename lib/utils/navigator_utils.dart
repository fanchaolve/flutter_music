
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application.dart';
import 'package:flutter_app/routes/routes.dart';

class NavigatorUtil{

  static _navigateTo(BuildContext context,String path,
  {bool replace = false,bool  clearStack = false,
    Duration transitionDuration = const Duration(milliseconds: 250),
    RouteTransitionsBuilder transitionsBuilder
  }
      ){
    Application.router.navigateTo(context, path,replace: replace,
    clearStack: clearStack,transitionDuration: transitionDuration,
    transitionBuilder: transitionsBuilder,transition: TransitionType.material);


  }
  //登陆页
  static void goLoginPage(BuildContext context){
    _navigateTo(context, Routes.login,clearStack: true);
  }

  //首页
  static void goHomePage(BuildContext context){
    _navigateTo(context, Routes.home,clearStack: true);
  }

  //每日推荐
  static void goSongs(BuildContext context){
    _navigateTo(context, Routes.songs);
  }

  static void goTopList(BuildContext context){
    _navigateTo(context, Routes.top_list);
  }
}