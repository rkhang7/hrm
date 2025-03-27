import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hrm/commom/widgets/base_text.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseFilledButton extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  const BaseFilledButton({
    super.key,
    this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Để gradient hiển thị đúng

      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12.sp), // Bo góc ripple effect
        child: Ink(
          height: 48.sp, // Điều chỉnh chiều cao
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor("#8862F2"),
                HexColor("#7544FC"),
                HexColor("#5B2ED4"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
              child: BaseText(
            text: text,
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Pallete.whiteColor,
          )),
        ),
      ),
    );
  }
}
