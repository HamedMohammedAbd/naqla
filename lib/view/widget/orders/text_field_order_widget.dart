import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class TextFieldOrderWidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hint;
  const TextFieldOrderWidget({
    super.key,
    required this.textEditingController,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 6.7,
      child: TextFormField(
        controller: textEditingController,
        minLines: 5,
        maxLines: 10,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          hintText: hint.tr,
          hintStyle: TextStyle(
            fontSize: Get.width / 31.84,
            color: AppColor.grayColor,
          ),
        ),
      ),
    );
  }
}
