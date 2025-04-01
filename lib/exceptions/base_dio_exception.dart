import 'package:dio/dio.dart';
import 'package:hrm/utils/app_constants.dart';

class BaseDioException implements Exception {
  final DioException exception;
  BaseDioException(this.exception);

  String get message {
    if (exception.type == DioExceptionType.sendTimeout) {
      return "Time out";
    } else if (exception.type == DioExceptionType.receiveTimeout) {
      return "Server connection timeout";
    } else if (exception.type == DioExceptionType.badResponse) {
      if (exception.response != null) {
        if (exception.response!.statusCode == 405) {
          return "Method Not Allowed";
        } else if (exception.response!.statusCode == 401) {
          return "Unauthorized ";
        }
      }
    } else if (exception.type == DioExceptionType.connectionError) {
      return "Connection error";
    }
    // more and more
    return AppConstants.unknwonMessageError;
  }
}
