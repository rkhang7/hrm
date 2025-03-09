import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:skeletonizer/skeletonizer.dart';

import '../../core/theme/pallete.dart';

class BaseSvgIcon extends StatelessWidget {
  final String assetName;
  final double? size;
  final bool? nativeColor;
  final Color? color;
  const BaseSvgIcon({
    super.key,
    required this.assetName,
    this.size,
    this.color,
    this.nativeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Skeleton.shade(
      child: SvgPicture.asset(
        assetName,
        height: size,
        width: size,
        colorFilter: ColorFilter.mode(
          color ?? Pallete.blackColor,
          nativeColor == true ? BlendMode.dst : BlendMode.srcIn,
        ),
      ),
    );
  }
}
