import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../global/text_custom.dart';

class CheckBoxWidget extends StatelessWidget {
  final Color color;
  final void Function(bool?)? onChanged;
  final String text;
  final bool isTrue;
  const CheckBoxWidget({
    super.key,
    required this.color,
    this.onChanged,
    required this.text,
    required this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Checkbox(
          checkColor: color,
          activeColor: AppColor.backgrounColor,
          side: BorderSide(
            color: color,
            width: 1.5,
          ),
          value: isTrue,
          onChanged: onChanged,
        ),
        TextCustom(
          text: text.tr,
          textColor: color,
          fontSize: Get.width / 31,
        ),
      ],
    );
  }
}
