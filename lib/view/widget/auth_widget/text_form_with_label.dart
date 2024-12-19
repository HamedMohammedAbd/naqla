import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global/text_custom.dart';
import '../global/text_form_custom.dart';

class TextFormWithLabel extends StatelessWidget {
  final String label, hint;
  final TextEditingController textEditingController;
  final String? Function(String?)? validation;
  final Widget? suffix;
  final void Function(String)? onChanged;
  const TextFormWithLabel({
    super.key,
    required this.label,
    required this.hint,
    required this.textEditingController,
    this.validation,
    this.suffix,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        TextCustom(
          text: "${label.tr} : ",
          fontSize: Get.width / 24,
        ),
        SizedBox(
          height: Get.height / 90,
        ),
        TextFormCustom(
          hint: hint,
          controller: textEditingController,
          validation: validation,
          suffix: suffix,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
