
import 'package:flutter/material.dart';
import 'package:flutter_app/application.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/utils/navigator_utils.dart';
import 'package:flutter_app/utils/utils.dart';
import 'package:flutter_app/widget/net_utils.dart';
import 'dart:convert';

class UserProvide with ChangeNotifier{

  User _user;

  User get user=>_user;

  void initUser(){
    if(Application.sp.containsKey('user')){
      String s = Application.sp.getString('user');
      var result = json.decode(s.toString());
      _user = User.fromJson(result);
    }

  }


  void login(BuildContext context,String phone,String pwd) async{
    User user = await NetUtils.login(context, phone, pwd);
    if(user.code>299) {
      Utils.showToast('登录失败，请检查账号密码');
      return;
    }
    Utils.showToast(user.profile.nickname);
    _saveUserInfo(user);
    NavigatorUtil.goHomePage(context);



  }

  _saveUserInfo(User user){
    _user = user;

    Application.sp.setString('user', json.encode(user.toJson()));
    
  }


}