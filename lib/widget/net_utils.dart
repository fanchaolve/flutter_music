import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_app/widget/loading.dart';

class NetUtils{

  static Dio _dio;
  static void init() async{

    // 获取沙盒路径，用于存储 cookie
//    Directory tempDir = await getTemporaryDirectory();
//    String tempPath = tempDir.path;
  var tempPath="";
    CookieJar cj = PersistCookieJar(dir: tempPath);
    _dio = Dio(BaseOptions(baseUrl: 'http://127.0.0.1:3000'))
    ..interceptors.add(CookieManager(cj))
    ..interceptors.add(LogInterceptor(responseBody: true,requestBody: true));
  }

  static Future<Response> _get(BuildContext context,String url,
  {Map<String,dynamic>params}) async{
    Loading.showLoading(context);
    try{
      return await _dio.get(url,queryParameters: params);
    }on DioError catch(e){
      if(e.response is Map){
        return Future.value(e.response);
      }else{
        return Future.error(0);
      }
    }finally{
      Loading.hideLoading(context);
    }


  }
}