import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../util/network/http_interceptor.dart';

class DetailRepository {
  late Dio _dio;

  DetailRepository() {
    _dio = Dio();
    _initDio();
  }

  void _initDio() {
    _dio.httpClientAdapter = HttpClientAdapter();
    _dio.options = BaseOptions(
      headers: {"Accept": "application/vnd.github+json"},
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
      validateStatus: (_) => true,
    );
    _dio.interceptors.addAll(<Interceptor>[
      if (kDebugMode) (HttpInterceptor())
    ]);
  }

  Future<Response> getFollowers(String followerUrl) async {
    return await _dio.get(followerUrl);
  }

  Future<Response> getFollowings(String followingUrl) async {
    return await _dio.get(followingUrl.replaceAll('{/other_user}', ''));
  }

  Future<Response> getRepos(String reposUrl) async {
    return await _dio.get(reposUrl);
  }
}
