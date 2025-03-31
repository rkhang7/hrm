import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseFilledButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final bool? disabled;

  const BaseFilledButton({
    super.key,
    this.onPressed,
    required this.text,
    this.disabled,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Đảm bảo nền trong suốt
      child: Ink(
        decoration: BoxDecoration(
          gradient: disabled == true
              ? null
              : LinearGradient(
                  colors: [
                    HexColor("#8862F2"),
                    HexColor("#7544FC"),
                    HexColor("#5B2ED4"),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0.0, 0.5, 1.0],
                ),
          borderRadius: BorderRadius.circular(100.sp),
          color: disabled == true
              ? Pallete.gray400Color
              : Pallete.primaryTextColor,
        ),
        child: InkWell(
          onTap: disabled == true ? null : onPressed,
          borderRadius: BorderRadius.circular(100.sp),
          splashColor: Colors.white.withOpacity(0.3), // Màu ripple
          child: Container(
            height: 48.sp,
            width: double.infinity,
            alignment: Alignment.center,
            child: BaseText(
              text: text,
              fontWeight: FontWeight.w500,
              color: Pallete.whiteColor,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
