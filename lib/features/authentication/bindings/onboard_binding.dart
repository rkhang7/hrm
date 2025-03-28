import 'package:get/get.dart';
import 'package:hrm/commom/base/base_binding.dart';
import 'package:hrm/features/authentication/controllers/onboard_controller.dart';

class OnBoardBinding extends BaseBinding {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnboardController(),
    );
  }
}
