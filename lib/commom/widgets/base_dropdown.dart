import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseDropdown extends StatelessWidget {
  final List<DropdownMenuItem<String>>? items;
  final Function(String?)? onChanged;
  final String? value;
  final String? descriptionText;
  final bool isRequireField;
  final String? Function(String?)? validator;
  const BaseDropdown({
    super.key,
    this.items,
    this.value,
    this.onChanged,
    this.descriptionText,
    this.isRequireField = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        descriptionText != null
            ? BaseText(
                text:
                    isRequireField ? "*${descriptionText!}" : descriptionText!,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Pallete.blackColor,
              )
            : Container(),
        Gap(10.h),
        DropdownButtonFormField<String>(
          padding: EdgeInsets.zero,
          isExpanded: true,
          items: items,
          onChanged: onChanged,
          value: value == "" ? null : value,
          isDense: true,
          decoration: InputDecoration(
            constraints: BoxConstraints(maxHeight: 44.sp),
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            border: _outlineInputBorder(),
            enabledBorder: _outlineInputBorder(),
            focusedBorder: _outlineInputBorder(),
            disabledBorder: _outlineInputBorder(),
          ),
          hint: BaseText(
            text: "Select",
            fontSize: 16.sp,
            color: Pallete.backgroundPrimary,
          ),
          validator: isRequireField
              ? (value) {
                  if (value == null || value == "") {
                    return "please_fill_the_required_fields".tr;
                  }
                  return null;
                }
              : validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ],
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Pallete.backgroundPrimary,
      ),
      borderRadius: BorderRadius.circular(4.sp),
    );
  }
}
