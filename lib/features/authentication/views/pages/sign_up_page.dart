import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/commom/widgets/base_svg_icon.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';
import 'package:hrm/utils/constants/assets_constants.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Đổi màu status bar để trùng với background

    return BasePage(
      onRefresh: () async {},
      body: Column(
        children: [
          BaseSvgIcon(
            assetName: AssetsConstants.appIcon,
          )
        ],
      ),
    );
  }
}
