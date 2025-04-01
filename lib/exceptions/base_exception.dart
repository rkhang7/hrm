class BaseException implements Exception {
  final Object exception;
  BaseException(this.exception);

  String get message {
    // if (exception.type == DioExceptionType.sendTimeout) {
    //   return "Time out";
    // } else if (exception.response != null) {
    //   if (exception.response!.statusCode == 405) {
    //     return "Method Not Allowed";
    //   }
    // }
    // more and more
    // return AppConstants.unknwonMessageError;
    return exception.toString();
  }
}
