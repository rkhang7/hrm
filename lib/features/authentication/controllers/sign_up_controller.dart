import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hrm/commom/base/base_controller.dart';
import 'package:hrm/models/entities/common_entity.dart';

class SignUpController extends BaseController {
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  var aggreeTerm = false.obs;

  final formKey = GlobalKey<FormState>();

  var listPosition = <CommonEntity>[].obs;

  @override
  void onInit() {
    _fetchPositions();
    super.onInit();
  }

  Future _fetchPositions() async {}

  void signUp() {
    if (formKey.currentState!.validate()) {}
  }
}
