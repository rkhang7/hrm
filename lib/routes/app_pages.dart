import 'package:get/route_manager.dart';
import 'package:hrm/features/authentication/bindings/onboard_binding.dart';
import 'package:hrm/features/authentication/bindings/sign_up_binding.dart';
import 'package:hrm/features/authentication/views/pages/onboard_page.dart';
import 'package:hrm/features/authentication/views/pages/sign_up_page.dart';
import 'package:hrm/routes/app_routes.dart';

class AppPages {
  static var getPages = [
    GetPage(
      name: AppRoutes.onBoard,
      page: () => const OnboardPage(),
      binding: OnBoardBinding(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => const SignUpPage(),
      binding: SignUpBinding(),
    )
  ];
}
