import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm/commom/base/base_controller.dart';

class SignUpController extends BaseController {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var aggreeTerm = false.obs;

  final formKey = GlobalKey<FormState>();

  void signUp() {
    if (formKey.currentState!.validate()) {}
  }
}
