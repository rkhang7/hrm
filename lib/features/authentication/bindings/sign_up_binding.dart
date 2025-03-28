import 'package:get/get.dart';
import 'package:hrm/commom/base/base_binding.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';

class SignUpBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.put(SignUpController());
  }
}
