import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? descriptionText;
  final String? hintText;
  final bool isRequireField;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final bool readOnly;
  final TextInputType? keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;
  final void Function(String)? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final int maxLines;
  final bool noBorder;
  final double? hintSize;
  final int? maxLength;
  final FocusNode? focusNode;
  final TextAlign textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final int? errorMaxLines;
  final String? helperText;
  final AutovalidateMode? autovalidateMode;
  final bool autofocus;
  final Widget? prefixIcon;
  const BaseTextField({
    super.key,
    this.controller,
    this.hintText,
    this.descriptionText,
    this.isRequireField = false,
    this.suffixIcon,
    this.onChanged,
    this.readOnly = false,
    this.keyboardType,
    this.isPassword = false,
    this.validator,
    this.textInputAction,
    this.onFieldSubmitted,
    this.maxLines = 1,
    this.noBorder = true,
    this.hintSize,
    this.maxLength,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.inputFormatters,
    this.errorMaxLines,
    this.helperText,
    this.autovalidateMode,
    this.autofocus = false,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    // Sử dụng Obx để quản lý trạng thái hiển thị mật khẩu
    final isPasswordHidden = isPassword.obs;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (descriptionText != null)
          BaseText(
            text: isRequireField ? "*${descriptionText!}" : descriptionText!,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: Pallete.gray600Color,
          ),
        Gap(5.h),
        Obx(
          () => TextFormField(
            autofocus: autofocus,
            focusNode: focusNode,
            maxLines: maxLines,
            obscureText: isPasswordHidden.value,
            style: TextStyle(
              fontFamily: 'NotoSerifKR',
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: readOnly ? Pallete.gray400Color : Pallete.blackColor,
              decorationThickness: 0,
            ),
            controller: controller,
            maxLength: maxLength,
            textAlign: textAlign,
            inputFormatters: inputFormatters,
            decoration: InputDecoration(
              errorMaxLines: errorMaxLines ?? 3,
              isDense: true,
              helperText: helperText,
              border: noBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(color: Pallete.gray400Color),
                    )
                  : OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Pallete.gray400Color),
                    ),
              enabledBorder: noBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(color: Pallete.gray400Color),
                    )
                  : OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Pallete.gray400Color),
                    ),
              focusedBorder: noBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(color: Pallete.gray400Color),
                    )
                  : OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Pallete.backgroundPrimaty),
                    ),
              disabledBorder: noBorder
                  ? UnderlineInputBorder(
                      borderSide: BorderSide(color: Pallete.gray400Color),
                    )
                  : OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Pallete.gray400Color),
                    ),
              hintText: hintText,
              hintStyle: TextStyle(
                fontFamily: 'NotoSerifKR',
                fontSize: hintSize ?? 16.sp,
                fontWeight: FontWeight.w400,
                color: Pallete.gray400Color,
              ),
              suffixIconConstraints: const BoxConstraints(),
              suffixIcon: isPassword
                  ? Padding(
                      padding: EdgeInsets.all(8.sp),
                      child: IconButton(
                        color: Pallete.purple500Color,
                        onPressed: () {
                          isPasswordHidden.value = !isPasswordHidden.value;
                        },
                        icon: Icon(
                          isPasswordHidden.isTrue
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        padding: EdgeInsets.zero,
                        constraints:
                            const BoxConstraints(), // override default min size of 48px
                        style: const ButtonStyle(
                          tapTargetSize: MaterialTapTargetSize
                              .shrinkWrap, // the '2023' part
                        ),
                      ),
                    )
                  : suffixIcon,
              prefixIconConstraints: const BoxConstraints(),
              prefixIcon: Padding(
                padding: EdgeInsets.all(8.sp),
                child: prefixIcon,
              ),
            ),
            cursorColor: Pallete.blackColor,
            onChanged: onChanged,
            readOnly: readOnly,
            keyboardType: keyboardType,
            validator: (isRequireField && validator == null)
                ? (value) {
                    if (value!.trim().isEmpty) {
                      return "please_fill_the_required_fields".tr;
                    }
                    return null;
                  }
                : validator,
            autovalidateMode:
                autovalidateMode ?? AutovalidateMode.onUserInteraction,
            textInputAction: textInputAction ?? TextInputAction.next,
            onFieldSubmitted: onFieldSubmitted,
          ),
        ),
      ],
    );
  }
}
