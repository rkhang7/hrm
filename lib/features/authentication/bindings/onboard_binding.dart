import 'package:get/get.dart';
import 'package:hrm/features/authentication/controllers/onboard_controller.dart';

class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => OnboardController(),
    );
  }
}
