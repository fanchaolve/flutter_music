import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/demo001.dart';
import 'package:flutter_app/pages/splash_page.dart';
import 'package:flutter_app/routes/routes.dart';
import 'package:provider/provider.dart';
import 'application.dart';

void main() {

  Router router  = Router();
  Routes.configureRoutes(router);
  Application.router=router;

  runApp(MyApp());
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
        splashColor: Colors.transparent
      ),
      home: SplashPage(),
      onGenerateRoute: Application.router.generator,
    );
  }
}


