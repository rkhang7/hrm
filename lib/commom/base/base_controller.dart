import 'package:get/get.dart';
import 'package:hrm/repository/authen_repository.dart';

class BaseController extends GetxController {
  final authenRepository = Get.find<AuthenRepository>();
}
