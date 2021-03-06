import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_app/model/album.dart';
import 'package:flutter_app/model/daily_songs_data.dart';
import 'package:flutter_app/model/mv.dart';
import 'package:flutter_app/model/recommend_data.dart';
import 'package:flutter_app/model/top_list.dart';
import 'package:flutter_app/model/user.dart';
import 'package:flutter_app/widget/loading.dart';
import 'package:path_provider/path_provider.dart';
import '../model/banner.dart' as mBanner;
import 'custom_log_interceptor.dart';

//封装网络请求
class NetUtils {
  static final String baseUrl = 'http://192.168.0.182:3000';

  static Dio _dio;

  static void init() async {
    // 获取沙盒路径，用于存储 cookie
    Directory tempDir = await getTemporaryDirectory();
    String tempPath = tempDir.path;
    CookieJar cj = PersistCookieJar(dir: tempPath);
    _dio = Dio(BaseOptions(baseUrl: baseUrl))
      ..interceptors.add(CookieManager(cj))
      ..interceptors
          .add(CustomLogInterceptor(responseBody: true, requestBody: true));
  }

  static Future<Response> _get(BuildContext context, String url,
      {Map<String, dynamic> params}) async {
    Loading.showLoading(context);
    try {
      return await _dio.get(url, queryParameters: params);
    } on DioError catch (e) {
      print('返回错误结果:${e}');
      if (e.response is Map) {
        return Future.value(e.response);
      } else {
        return Future.error(0);
      }
    } finally {
      Loading.hideLoading(context);
    }
  }

  //登陆接口
  static Future<User> login(
      BuildContext context, String phone, String pwd) async {
    var response = await _get(context, '/login/cellphone',
        params: {'phone': phone, 'password': pwd});
    return User.fromJson(response.data);
  }

  //刷新登录
  static Future<Response> refreshLogin(BuildContext context) async {
    return await _get(context, '/login/refresh');
  }

  //获取banner
  static Future<mBanner.Banner> getBannerData(BuildContext context) async {
    var response = await _get(context, '/banner', params: {'type': 1});
    return mBanner.Banner.fromJson(response.data);
  }

  //推荐歌单的接口调用

  static Future<RecommendData> getRecommendData(BuildContext context) async {
    var response = await _get(context, '/recommend/resource');
    return RecommendData.fromJson(response.data);
  }

  /// 新碟上架
  static Future<AlbumData> getAlbumData(BuildContext context,
      {Map<String, dynamic> params = const {
        'offset': 1,
        'limit': 5,
      }}) async {
    var response = await _get(context, '/top/album', params: params);
    return AlbumData.fromJson(response.data);
  }

  /// 每日推荐歌曲
  static Future<DailySongsData> getDailySongsData(BuildContext context,
      {Map<String, dynamic> params}) async {
    var response = await _get(context, '/recommend/songs');
    return DailySongsData.fromJson(response.data);
  }

  //排行榜
  static Future<TopListData> getTopListData(BuildContext context,
      {Map<String, dynamic> params}) async {
    var response = await _get(context, '/toplist/detail');
    print('==>${response.data}');
    return TopListData.fromJson(response.data);
  }

  //mv
  static Future<MVData> getMvTopList(BuildContext context,
      {Map<String, dynamic> params = const {
        'offset': 1,
        'limit': 10,
      }}) async {
    var response = await _get(context, '/top/mv', params: params);
    return MVData.fromJson(response.data);
  }
}
