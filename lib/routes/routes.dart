
import 'dart:math';

import 'package:fluro/fluro.dart';
import 'package:flutter_app/routes/route_handles.dart';

class Routes{

  static String root ='/';
  static String login ='/login';
  static String home ='/home';
  static String songs ='/songs';
  static String top_list='/top_list';


  static void configureRoutes(Router router){

    router.notFoundHandler = new Handler(
      handlerFunc: (context,Map<String,List<String>> params){
        print('Route was not found !!');
        return null;
    },
    );

    router.define(root, handler: splashHandler);
    router.define(login, handler: loginHandler);
    router.define(home, handler: homeHandler);
    router.define(songs, handler: songHandler);
    router.define(top_list, handler: topListHandler);
  }
}