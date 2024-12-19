import 'package:flutter/material.dart';
import 'package:naqla/core/constant/app_color.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  const TextCustom({
    super.key,
    required this.text,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.textAlign,
    this.textDecoration,
  });

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      text,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor ?? AppColor.textColor,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decoration: textDecoration,
        
      ),
    );
  }
}
