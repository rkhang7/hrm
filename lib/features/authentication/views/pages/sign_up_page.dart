import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/commom/widgets/base_svg_icon.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';
import 'package:hrm/utils/constants/assets_constants.dart';
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          spacing: 8.w,
                          children: [
                            BaseText(
                              text: "today_task".tr,
                              fontWeight: FontWeight.w600,
                              color: Pallete.primaryTextColor,
                              fontSize: 11.sp,
                            ),
                            Container(
                              height: 15.sp,
                              width: 15.sp,
                              decoration: BoxDecoration(
                                color: Pallete.purple100Color,
                                borderRadius: BorderRadius.circular(
                                  3.15.sp,
                                ),
                              ),
                              child: Center(
                                child: BaseText(
                                  text: "1",
                                  fontWeight: FontWeight.w600,
                                  color: Pallete.purple500Color,
                                  fontSize: 9.44.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                        BaseText(
                          text: 'the_tasks_assigned_to_you_for_today'.tr,
                          fontSize: 9.44.sp,
                          color: Pallete.secondTextColor,
                        ),
                        Container(
                          height: 114.8.sp,
                          padding: EdgeInsets.all(
                            SpacingConstants.defaultSize,
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Pallete.gray100Color,
                            borderRadius: BorderRadius.circular(
                              9.44.sp,
                            ),
                            border: Border.all(
                              width: 0.79.sp,
                              color: Pallete.gray200Color,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  BaseSvgIcon(
                                    assetName: AssetsConstants.activityIcon,
                                    color: Pallete.blackColor,
                                    nativeColor: true,
                                  ),
                                  Gap(4.w),
                                  BaseText(
                                    text: 'wiring_dashboard_analytics'.tr,
                                    color: HexColor(
                                      "#2B2B2B",
                                    ),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11.sp,
                                  )
                                ],
                              )
                            ],
                          ),
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
