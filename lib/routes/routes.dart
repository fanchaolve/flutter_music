
import 'dart:math';

import 'package:fluro/fluro.dart';
import 'package:flutter_app/routes/route_handles.dart';

class Routes{

  static String root ='/';
  static String login ='/login';

  static void configureRoutes(Router router){

    router.notFoundHandler = new Handler(
      handlerFunc: (context,Map<String,List<String>> params){
        print('Route was not found !!');
        return null;
    },
    );

    router.define(root, handler: splashHandler);
    router.define(login, handler: loginHandler);
  }
}