import 'package:get/get.dart';
import 'package:hrm/apis/authen_api.dart';
import 'package:hrm/repository/authen_repository.dart';
import 'package:hrm/utils/dio_factory.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    final dio = DioFactory.createDio();
    Get.put(AuthenRepository(authenApi: AuthenApi(dio)));
  }
}
