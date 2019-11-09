import 'package:flutter/material.dart';
import 'package:flutter_app/provider/user_provider.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/common_button.dart';
import 'package:flutter_app/widget/v_empty_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin{

  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {

    _controller = AnimationController(vsync: this,duration: Duration(milliseconds: 300));
    _animation = CurvedAnimation(
      parent: _controller,curve: Curves.linear
    );
    Future.delayed(Duration(milliseconds: 500),(){
      _controller.forward();
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: ScreenUtil().setWidth(80),
          right: ScreenUtil().setWidth(80),
            top: ScreenUtil().setWidth(80)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: 'logo',
                child: Image.asset('images/icon_logo.png',width: ScreenUtil().setWidth(120),
                height: ScreenUtil().setWidth(120),
                ),
              ),
              _LoginAnimatedWidget(animation: _animation,),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginAnimatedWidget extends AnimatedWidget{


  final Tween<double> _opacityTween = Tween(begin: 0,end: 1);
  final Tween<double> _offsetTween = Tween(begin: 40, end: 0);
  final Animation animation;
  _LoginAnimatedWidget({@required this.animation})
  :super(listenable:animation);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: _opacityTween.evaluate(animation),
      child: Container(
        margin: EdgeInsets.only(top: _offsetTween.evaluate(animation)),
        child: _LoginWidget(),
      ),
    );
  }

}

class _LoginWidget extends StatefulWidget {
  @override
  __LoginWidgetState createState() => __LoginWidgetState();
}

class __LoginWidgetState extends State<_LoginWidget> {
  final TextEditingController _phoneController
   = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();



  bool isDelete=false;

  @override
  void initState() {

   _phoneController.addListener((){

     setState(() {
       if(_phoneController.text.length>0)
         isDelete =true;
        else
          isDelete =false;
     });

   });
    super.initState();
  }




   InputDecoration _phoneInputDecoration(){

    return InputDecoration(
      hintText: 'Phone',
      prefixIcon: Icon(
        Icons.phone_iphone,
        color: Colors.green,
      ),
      suffixIcon: isDelete?InkWell(
        child:Icon(
            Icons.close
        ),
        onTap: (){
          setState(() {
            _phoneController.clear();
          });
        },
      ):Text(''),
    );
  }



  @override
  Widget build(BuildContext context) {


    return Theme(
      data: ThemeData(
        primaryColor: Colors.green
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: ScreenUtil().setWidth(30)),
            child: Text(
              'Welcome Back!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
                color: Colors.black87
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:ScreenUtil().setWidth(3)),
            child: Text(
              'The Flutter Netease Cloud Music App',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
          VEmptyView(50),
          TextField(
            keyboardType:TextInputType.number ,
            controller: _phoneController,
            decoration: _phoneInputDecoration()
          ),
          VEmptyView(40),
          TextField(
            obscureText: true,
            controller: _pwdController,
            decoration: InputDecoration(
              hintText: 'Password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              )
            ),
          ),
          VEmptyView(120),
          Consumer<UserProvide>(
            builder: (BuildContext ctx, UserProvide value, Widget child
            ){
              return CommonButton(
                content: 'Login',
                width: double.infinity,
                callback: (){

                  String phone =_phoneController.text;
                  String pwd = _pwdController.text;
                  print(phone+pwd);
                  if(phone.isEmpty || pwd.isEmpty){
                    Utils.showToast('请输入账号或者密码');
                    return;
                  }

                  value.login(context, phone, pwd);
                },
              );

            }
          )
        ],
      ),
    );
  }
}

