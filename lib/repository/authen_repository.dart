// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hrm/apis/authen_api.dart';
import 'package:hrm/commom/base/base_repository.dart';
import 'package:hrm/core/type_defs.dart';
import 'package:hrm/exceptions/base_dio_exception.dart';
import 'package:hrm/exceptions/base_exception.dart';
import 'package:hrm/models/entities/failure.dart';
import 'package:hrm/models/request/base_request.dart';
import 'package:hrm/models/response/base_response.dart';

class AuthenRepository extends BaseRepository {
  final AuthenApi _authenApi;

  AuthenRepository({required AuthenApi authenApi}) : _authenApi = authenApi;

  FutureEither<BaseResponse> signUp({required BaseRequest baseRequest}) async {
    try {
      return right(await _authenApi.signUp(baseRequest));
    } on DioException catch (e) {
      return left(Failure(message: BaseDioException(e).message));
    } catch (e) {
      return left(Failure(message: BaseException(e).message));
    }
  }
}
