import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../util/network/http_interceptor.dart';

class RepoReposiory {
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

  Future<Response> getMainRepo(String reposUrl) async {
    initDio();
    return await dio.get(reposUrl);
  }
}
