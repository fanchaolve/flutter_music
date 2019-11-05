
import 'package:flutter/material.dart';
import 'package:flutter_app/application.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/widget/net_utils.dart';

class UserProvide with ChangeNotifier{

  User _user;

  User get user=>_user;

  void initUser(){

  }



}