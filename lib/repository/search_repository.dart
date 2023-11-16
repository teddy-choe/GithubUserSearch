import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:search_github/util/network/http_interceptor.dart';

import '../util/const.dart';

class SearchRepository {
  late Dio _dio;

  SearchRepository() {
    _dio = Dio();
    _initDio();
  }

  void _initDio() {
    _dio.httpClientAdapter = HttpClientAdapter();
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      headers: {"Accept": "application/vnd.github+json"},
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
      validateStatus: (_) => true,
    );
    _dio.interceptors.addAll(<Interceptor>[
      if (kDebugMode) (HttpInterceptor()),
    ]);
  }

  Future<Response> search(String query, int page) async {
    return await _dio.get(
      'users',
      queryParameters: {'q': query, 'page': page.toString()},
    );
  }
}
