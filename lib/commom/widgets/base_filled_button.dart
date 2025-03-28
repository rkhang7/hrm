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
    return SizedBox(
      height: 48.sp,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero, // Loại bỏ padding mặc định
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.sp),
          ),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                HexColor("#8862F2"),
                HexColor("#7544FC"),
                HexColor("#5B2ED4"),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.5, 1.0], // Điều chỉnh phân bố màu
            ),
            borderRadius: BorderRadius.circular(100.sp),
          ),
          child: InkWell(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.sp),
                child: BaseText(
                  text: text,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                  color: Pallete.whiteColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
