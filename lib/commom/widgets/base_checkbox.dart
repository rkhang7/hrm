import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseCheckbox extends StatelessWidget {
  final bool value;
  final Function(bool?)? onChanged;
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final Color? activeColor;
  const BaseCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.text,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    this.activeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 24.0,
          width: 24.0,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            value: value,
            onChanged: onChanged,
            activeColor: activeColor ?? Pallete.backgroundPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                6.sp,
              ),
            ),
            side: WidgetStateBorderSide.resolveWith((states) {
              if (states.contains(WidgetState.selected)) {
                return BorderSide(
                    width: 2.sp,
                    color: Colors.transparent); // Viền khi được chọn
              }
              return BorderSide(
                  width: 2.sp,
                  color: Pallete.backgroundPrimary); // Viền đỏ khi chưa active
            }),
          ),
        ),
        Gap(5.w),
        text != null
            ? Expanded(
                child: BaseText(
                  text: text!,
                  fontSize: fontSize ?? 14.sp,
                  color: textColor ?? Pallete.gray100Color,
                  fontWeight: fontWeight,
                  textOverflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                ),
              )
            : Container(),
      ],
    );
  }
}
