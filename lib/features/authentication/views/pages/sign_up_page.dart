import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      onRefresh: () async {},
      body: Column(
        children: [],
      ),
    );
  }
}
