import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';
import 'package:hrm/utils/constants/spacing_constants.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      padding: EdgeInsets.zero,
      onRefresh: () async {},
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Pallete.purple500Color,
                      Pallete.whiteColor,
                    ]),
              ),
              child: Center(
                child: Transform.rotate(
                  angle: -15 *
                      (3.141592653589793 / 180), // Convert degrees to radians
                  child: Container(
                    padding: EdgeInsets.all(6.sp),
                    width: 288.sp,
                    height: 173.sp,
                    decoration: BoxDecoration(
                      color: Pallete.whiteColor,
                      borderRadius: BorderRadius.circular(6.4.sp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BaseText(
                          text: "today_task".tr,
                          fontWeight: FontWeight.w600,
                          color: Pallete.primaryTextColor,
                          fontSize: 11.sp,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Pallete.whiteColor,
            ),
          )
        ],
      ),
    );
  }
}
