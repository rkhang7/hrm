import 'package:get/get.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => SignUpController(),
    );
  }
}
