import 'package:hrm/utils/app_constants.dart';

class Failure {
  final String message;
  final int statusCode;
  Failure({
    this.message = AppConstants.unknwonMessageError,
    this.statusCode = AppConstants.unknwonStatusCode,
  });
}
