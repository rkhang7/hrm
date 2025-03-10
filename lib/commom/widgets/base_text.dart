import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseText extends StatelessWidget {
  final String text;
  final AppFont? font;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final TextDecoration? decoration;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final bool? softWrap;
  final double? height;
  final Function()? onTap;
  final TextDecorationStyle? decorationStyle;
  final Color? decorationColor;
  final double? decorationThickness;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  const BaseText({
    super.key,
    required this.text,
    this.font = AppFont.noto,
    this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.color,
    this.textAlign,
    this.decoration,
    this.textOverflow,
    this.maxLines,
    this.softWrap,
    this.height,
    this.onTap,
    this.decorationStyle,
    this.decorationColor,
    this.decorationThickness,
    this.fontStyle,
    this.letterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: font == AppFont.pretendard
              ? 'Pretendard'
              : font == AppFont.milion
                  ? 'Minion'
                  : 'NotoSerifKR',
          fontSize: fontSize ?? 14.sp,
          fontWeight: fontWeight,
          color: color ?? Pallete.blackColor,
          decorationThickness: decorationThickness,
          decoration: decoration,
          height: height,
          decorationStyle: decorationStyle,
          decorationColor: decorationColor,
          fontStyle: fontStyle,
          letterSpacing: letterSpacing,
        ),
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,
        softWrap: softWrap,
      ),
    );
  }
}

enum AppFont { noto, pretendard, milion }
