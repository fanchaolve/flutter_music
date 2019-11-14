import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBanner extends StatefulWidget {
  final List<String> _images;
  final double height;

  CustomBanner(this._images, {this.height = 200}) : assert(_images != null);

  @override
  _CustomBannerState createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  PageController _pageController;
  int _curIndex;
  Timer _timer;

  @override
  void initState() {
    print('initState');
    _curIndex = widget._images.length;
    _pageController = PageController(initialPage: _curIndex);
    _initTimer();
    super.initState();
  }

  void _initTimer() {
    if (_timer == null) {
      if (mounted) {
        _timer = Timer.periodic(Duration(seconds: 3), (value) {
          _curIndex++;
          _pageController.animateToPage(_curIndex,
              duration: Duration(milliseconds: 700),
              curve: Curves.easeIn);
        });
      }
    }
  }

  _cancelTimer() {
    if (_timer != null) {
      print("cancel");
      _timer.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _timer = null;
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        _buildPageView(),
        _buildIndicator(),
      ],
    );
  }

  /// 切换页面，并刷新小圆点
  void _changePage() {
    Timer(Duration(milliseconds: 300), () {
      _pageController.jumpToPage(_curIndex);
    });
  }



  Widget _buildIndicator(){

    var length =widget._images.length;
    return Positioned(
      bottom: 10,
      child: Row(
        children: widget._images.map((s){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: ClipOval(
              child: Container(
                width: ScreenUtil().setWidth(12),
                height: ScreenUtil().setWidth(12),
                color: s == widget._images[_curIndex %length]
                ? Colors.green:Colors.grey,
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // 制作banner
  Widget _buildPageView() {
    var length = widget._images.length;
    return AspectRatio(
      aspectRatio: (1080 + (ScreenUtil().setWidth(15) * 2)) /
          (400 - (ScreenUtil().setWidth(15))),
      child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) {
            print('==>$index');
            setState(() {
              _curIndex = index;
              // _changePage();
            });
          },
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onPanDown: (details) {
                _cancelTimer();
                print('onPanDown');

              },
              onTap: () {
                print('onTap');
                _initTimer();
                Scaffold.of(context).showSnackBar(SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text('当前 page 为 ${index % length}'),
                ));
              },
              child: Padding(
                padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(25)),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                        ScreenUtil().setWidth(10)
                    ),
                    child: Utils.showNetImage(widget._images[index % length],
                        fit: BoxFit.fitWidth
                    )
                ),
              ),
            );
          }),
    );
  }
}




