import 'package:dio/dio.dart';
import 'package:search_github/util/logger.dart';

class HttpInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) {
    String log = "Request Method: ${options.method} -> path: ${options.path}";
    LoggerProvider.logger.d(log);
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    String log = "Status Code: ${response.statusCode} -> message: ${response.statusMessage}";
    LoggerProvider.logger.d(log);
    super.onResponse(response, handler);
  }
}
