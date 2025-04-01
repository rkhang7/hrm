import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  static Dio createDio() {
    Dio dio = Dio();
    dio.interceptors.clear();
    dio.options = BaseOptions(
      receiveTimeout: const Duration(minutes: 1),
      connectTimeout: const Duration(minutes: 1),
    );

    Map<String, dynamic> headers = {
      'Content-Type': 'application/json',
    };

    dio.options.headers.addAll(headers);
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (error, s) async {
          s.next(error);
        },
        onRequest: (options, handler) {
          // Đặt baseUrl động cho mỗi request
          // options.baseUrl = LocalStorageService.getShopmallApiUrl();
          return handler.next(options); // Tiếp tục xử lý request
        },
      ),
    );

    return dio;
  }
}
