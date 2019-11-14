import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/demo001.dart';
import 'package:flutter_app/pages/splash_page.dart';
import 'package:flutter_app/provider/user_provider.dart';
import 'package:flutter_app/routes/routes.dart';
import 'package:flutter_app/test.dart';
import 'package:flutter_app/test2.dart';
import 'package:flutter_app/utils/net_utils.dart';
import 'package:provider/provider.dart';
import 'application.dart';

void main() {
  Router router  = Router();
  Routes.configureRoutes(router);
  Application.router=router;
  Application.initSp();
  NetUtils.init();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<UserProvide>.value(value: UserProvide())
    ],
    child: MyApp(),
  ));



}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',

      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.white,
          splashColor: Colors.transparent),
      home: SplashPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}
