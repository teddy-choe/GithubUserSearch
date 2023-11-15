import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../util/network/http_interceptor.dart';

class DetailRepository {
  final dio = Dio();

  void initDio() {
    dio.httpClientAdapter = HttpClientAdapter();
    dio.options = BaseOptions(
      headers: {"Accept": "application/vnd.github+json"},
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
      validateStatus: (_) => true,
    );
    dio.interceptors.addAll(<Interceptor>[
      if (kDebugMode) (HttpInterceptor())
    ]);
  }

  Future<Response> getFollowers(String followerUrl) async {
    initDio();
    return await dio.get(followerUrl);
  }

  Future<Response> getFollowings(String followingUrl) async {
    initDio();
    return await dio.get(followingUrl.replaceAll('{/other_user}', ''));
  }

  Future<Response> getRepos(String reposUrl) async {
    initDio();
    return await dio.get(reposUrl);
  }
}
