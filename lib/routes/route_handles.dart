

import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/pages/daily_songs/daily_songs_page.dart';
import 'package:flutter_app/pages/home/home_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/splash_page.dart';
import 'package:flutter_app/pages/top_list/top_list_page.dart';

var splashHandler = new Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>>params){
    return SplashPage();
}
);

var loginHandler = new Handler(
    handlerFunc: (BuildContext context,Map<String,List<String>>params){
        return LoginPage();
}
);


var homeHandler = new Handler(
  handlerFunc: (BuildContext context,Map<String, List<String>> parameters){
    return HomePage();
  }
);

var songHandler =  new Handler(
  handlerFunc: (BuildContext context,Map<String,List<String>>params){
    return DailySongsPage();
  }
);

var topListHandler =  new Handler(
    handlerFunc: (BuildContext context,Map<String,List<String>>params){
      return TopListPage();
    }
);