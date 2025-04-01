import 'package:dio/dio.dart';
import 'package:hrm/models/request/base_request.dart';
import 'package:hrm/models/response/base_response.dart';
import 'package:hrm/utils/app_constants.dart';
import 'package:retrofit/retrofit.dart';

part 'authen_api.g.dart';

@RestApi(baseUrl: AppConstants.hrmApiUrl)
abstract class AuthenApi {
  factory AuthenApi(Dio dio, {String? baseUrl}) {
    return _AuthenApi(dio, baseUrl: baseUrl);
  }

  @POST('/User/Create')
  Future<BaseResponse> signUp(@Body() BaseRequest baseRequest);
}
