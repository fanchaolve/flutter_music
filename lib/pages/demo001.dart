import 'package:flutter/material.dart';


class LogoApp extends StatefulWidget {
  @override
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {

  Animation _animation;
  Animation _alpha_animation;
  AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(
      vsync: this,duration: const Duration(milliseconds: 1000)
    );
    _animation = Tween(begin: 0.0,end: 200.0).animate(_controller)
    ..addListener((){
      setState(() {

      });
    });
    _alpha_animation = Tween(begin: 0.0,end: 1.0).animate(_controller)
    ..addListener((){
      setState(() {
        print(_alpha_animation.value);
      });
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0, ),
        height: _animation.value,
        width: _animation.value,
        child: Opacity(
          opacity: _alpha_animation.value,
          child: FlutterLogo(),
        ),
      ),
    );
  }
}
