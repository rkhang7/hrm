import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseOutlineButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const BaseOutlineButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Đảm bảo nền trong suốt
      child: Ink(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.sp),
            border: Border.all(
              color: Pallete.purple500Color,
            )),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(100.sp),
          splashColor: Colors.white.withOpacity(0.3), // Màu ripple
          child: Container(
            height: 48.sp,
            width: double.infinity,
            alignment: Alignment.center,
            child: BaseText(
              text: text,
              fontWeight: FontWeight.w500,
              color: Pallete.purple500Color,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
