import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/commom/widgets/base_filled_button.dart';
import 'package:hrm/commom/widgets/base_outline_button.dart';
import 'package:hrm/commom/widgets/base_svg_icon.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';
import 'package:hrm/features/authentication/controllers/onboard_controller.dart';
import 'package:hrm/utils/constants/assets_constants.dart';
import 'package:hrm/utils/constants/spacing_constants.dart';

class OnboardPage extends GetView<OnboardController> {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      padding: EdgeInsets.zero,
      onRefresh: () async {},
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: _buildGradientContainer(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(SpacingConstants.defaultSize * 1.5),
              color: Pallete.whiteColor,
              child: Column(
                children: [
                  BaseText(
                    text: 'navigate_your_work'.tr,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  BaseText(
                    text: 'efficient_easy'.tr,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Gap(5.h),
                  BaseText(
                    text:
                        'increase_your_work_management_career_development_radically'
                            .tr,
                    font: AppFont.inter,
                    fontSize: 13.sp,
                    color: Pallete.secondTextColor,
                    textAlign: TextAlign.center,
                  ),
                  Gap(30.h),
                  BaseFilledButton(
                    text: 'sign_in'.tr,
                    onPressed: () {},
                  ),
                  Gap(15.h),
                  BaseOutlineButton(
                    text: 'sign_up'.tr,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGradientContainer() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Pallete.purple500Color, Pallete.whiteColor],
        ),
      ),
      child: Center(
        child: Transform.rotate(
          angle: -15 * (3.141592653589793 / 180), // Convert degrees to radians
          child: _buildTaskCard(),
        ),
      ),
    );
  }

  Widget _buildTaskCard() {
    return Container(
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
          _buildTaskHeader(),
          BaseText(
            text: 'the_tasks_assigned_to_you_for_today'.tr,
            fontSize: 9.44.sp,
            color: Pallete.secondTextColor,
            font: AppFont.inter,
          ),
          _buildTaskDetails(),
        ],
      ),
    );
  }

  Widget _buildTaskHeader() {
    return Row(
      children: [
        BaseText(
          text: "today_task".tr,
          fontWeight: FontWeight.w600,
          color: Pallete.primaryTextColor,
          fontSize: 11.sp,
          font: AppFont.inter,
        ),
        Gap(8.w),
        Container(
          height: 15.sp,
          width: 15.sp,
          decoration: BoxDecoration(
            color: Pallete.purple100Color,
            borderRadius: BorderRadius.circular(3.15.sp),
          ),
          child: Center(
            child: BaseText(
              text: "1",
              fontWeight: FontWeight.w600,
              color: Pallete.purple500Color,
              fontSize: 9.44.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTaskDetails() {
    return Container(
      height: 114.8.sp,
      padding: EdgeInsets.symmetric(horizontal: SpacingConstants.defaultSize),
      decoration: BoxDecoration(
        color: Pallete.gray100Color,
        borderRadius: BorderRadius.circular(9.44.sp),
        border: Border.all(width: 0.79.sp, color: Pallete.gray200Color),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildTaskRow(),
          _buildStatusRow(),
          _buildProgressBar(),
          _buildAvatarRow(),
        ],
      ),
    );
  }

  Widget _buildTaskRow() {
    return Row(
      children: [
        BaseSvgIcon(
          assetName: AssetsConstants.activityIcon,
          color: Pallete.blackColor,
          nativeColor: true,
        ),
        Gap(4.w),
        BaseText(
          text: 'wiring_dashboard_analytics'.tr,
          color: HexColor("#2B2B2B"),
          fontWeight: FontWeight.w500,
          fontSize: 11.sp,
          font: AppFont.inter,
        ),
      ],
    );
  }

  Widget _buildStatusRow() {
    return Row(
      children: [
        _buildStatusBox(
          width: 69.02.sp, // Chiều ngang của "In Progress"
          color: Pallete.gray200Color,
          icon: AssetsConstants.timeIcon,
          text: 'in_progress'.tr,
          textColor: Pallete.gray600Color,
        ),
        Gap(10.w),
        _buildStatusBox(
          width: 42.02.sp, // Chiều ngang của "High"
          color: Pallete.red500Color,
          icon: AssetsConstants.flagIcon,
          text: 'hight'.tr,
          textColor: Pallete.whiteColor,
        ),
      ],
    );
  }

  Widget _buildStatusBox({
    required double width,
    required Color color,
    required String icon,
    required String text,
    required Color textColor,
  }) {
    return Container(
      width: width, // Thêm tham số width
      height: 17.29.sp,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(78.64.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BaseSvgIcon(assetName: icon, nativeColor: true, size: 16.sp),
          BaseText(
            text: text,
            fontSize: 9.44.sp,
            fontWeight: FontWeight.w500,
            color: textColor,
            letterSpacing: -0.39.sp,
            font: AppFont.inter,
          ),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Container(
      height: 3.15.sp,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Pallete.purple500Color,
        borderRadius: BorderRadius.circular(23.59.sp),
      ),
    );
  }

  Widget _buildAvatarRow() {
    return Row(
      children: [
        _buildAvatar(AssetsConstants.avt01),
        _buildAvatar(AssetsConstants.avt02),
      ],
    );
  }

  Widget _buildAvatar(String asset) {
    return CircleAvatar(
      radius: 18.87.sp,
      backgroundImage: AssetImage(asset),
    );
  }
}
