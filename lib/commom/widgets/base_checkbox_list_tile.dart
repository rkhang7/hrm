import 'package:flutter/material.dart';
import 'package:hrm/core/theme/pallete.dart';

class BaseCheckboxListTile extends StatelessWidget {
  final bool value;
  final Function(bool?)? onChanged;
  final String? text;
  final double? fontSize;
  final Color? textColor;
  final FontWeight? fontWeight;
  final Color? activeColor;
  final Widget? title;
  const BaseCheckboxListTile({
    super.key,
    required this.value,
    this.onChanged,
    this.text,
    this.fontSize,
    this.textColor,
    this.fontWeight,
    this.activeColor,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: onChanged,
      title: title,
      activeColor: activeColor ?? Pallete.backgroundPrimary,
      controlAffinity: ListTileControlAffinity.leading,
      contentPadding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

      // tristate: true,
    );
  }
}
