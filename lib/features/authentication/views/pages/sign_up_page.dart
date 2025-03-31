import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:hrm/commom/pages/base_page.dart';
import 'package:hrm/commom/widgets/base_checkbox.dart';
import 'package:hrm/commom/widgets/base_filled_button.dart';
import 'package:hrm/commom/widgets/base_svg_icon.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/commom/widgets/base_text_field.dart';
import 'package:hrm/core/theme/pallete.dart';
import 'package:hrm/features/authentication/controllers/sign_up_controller.dart';
import 'package:hrm/utils/constants/assets_constants.dart';
import 'package:hrm/utils/constants/spacing_constants.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Đổi màu status bar để trùng với background

    return BasePage(
      backgroundColor: Pallete.purple25Color,
      onRefresh: () async {},
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BaseSvgIcon(
                  assetName: AssetsConstants.appIcon,
                  nativeColor: true,
                  size: 56.sp,
                ),
                Gap(10.h),
                BaseText(
                  text: "work_mate".tr,
                  font: AppFont.inter,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
                BaseText(
                  text: 'register_using_your_credentials'.tr,
                  font: AppFont.inter,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Gap(20.h),
            _buildInputForm(),
            Gap(10.h),
            Row(
              children: [
                Obx(
                  () => BaseCheckbox(
                    value: controller.aggreeTerm.value,
                    onChanged: (value) {
                      controller.aggreeTerm.value = value!;
                    },
                  ),
                ),
                BaseText(
                  text: 'i_agree_with_terms_conditions_and_privacy_policy'.tr,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                )
              ],
            ),
            Gap(20.h),
            Obx(
              () => BaseFilledButton(
                disabled: !controller.aggreeTerm.value,
                text: 'sign_up'.tr,
                onPressed: () {
                  controller.signUp();
                },
              ),
            ),
            Gap(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BaseText(
                  text: 'already_have_an_account'.tr,
                  font: AppFont.inter,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
                BaseText(
                  text: 'sign_in_here'.tr,
                  font: AppFont.inter,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                  color: Pallete.backgroundPrimary,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInputForm() {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          BaseTextField(
            controller: controller.userNameController,
            noBorder: false,
            descriptionText: "user_name".tr,
            prefixIcon: BaseSvgIcon(
              assetName: AssetsConstants.userIcon,
              nativeColor: true,
              size: 20.sp,
            ),
            isRequireField: true,
          ),
          SpacingConstants.spaceBtwInputFields,
          Row(
            children: [
              Expanded(
                child: BaseTextField(
                  controller: controller.firstNameController,
                  noBorder: false,
                  descriptionText: "first_name".tr,
                  prefixIcon: BaseSvgIcon(
                    assetName: AssetsConstants.userIcon,
                    nativeColor: true,
                    size: 20.sp,
                  ),
                  isRequireField: true,
                ),
              ),
              SpacingConstants.spaceBtwInputFields,
              Expanded(
                child: BaseTextField(
                  controller: controller.lastNameController,
                  noBorder: false,
                  descriptionText: "last_name".tr,
                  prefixIcon: BaseSvgIcon(
                    assetName: AssetsConstants.userIcon,
                    nativeColor: true,
                    size: 20.sp,
                  ),
                  isRequireField: true,
                ),
              ),
            ],
          ),
          SpacingConstants.spaceBtwInputFields,
          BaseTextField(
            controller: controller.emailController,
            noBorder: false,
            descriptionText: "Email",
            prefixIcon: BaseSvgIcon(
              assetName: AssetsConstants.emailIcon,
              nativeColor: true,
              size: 20.sp,
            ),
            isRequireField: true,
          ),
          SpacingConstants.spaceBtwInputFields,
          BaseTextField(
            controller: controller.passwordController,
            noBorder: false,
            descriptionText: "password".tr,
            prefixIcon: BaseSvgIcon(
              assetName: AssetsConstants.passwordIcon,
              nativeColor: true,
              size: 20.sp,
            ),
            isRequireField: true,
            isPassword: true,
          ),
          SpacingConstants.spaceBtwInputFields,
          BaseTextField(
            controller: controller.passwordController,
            noBorder: false,
            descriptionText: "confirm_password".tr,
            prefixIcon: BaseSvgIcon(
              assetName: AssetsConstants.passwordIcon,
              nativeColor: true,
              size: 20.sp,
            ),
            isRequireField: true,
            isPassword: true,
          ),
        ],
      ),
    );
  }
}
