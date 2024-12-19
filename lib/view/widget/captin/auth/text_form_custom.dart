import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';

import '../../../../core/constant/app_color.dart';

class AdminTextFormCustom extends StatelessWidget {
  final String hint;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final bool? isSuffix;
  const AdminTextFormCustom({
    super.key,
    required this.hint,
    required this.textEditingController,
    this.validator,
    this.isSuffix,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint.tr,
        hintStyle: TextStyle(
          fontSize: Get.width / 38,
          color: AppColor.grayColor,
        ),
        filled: true,
        fillColor: AppColor.backgrounColor,
        suffixIcon: isSuffix == true
            ? Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    AppImage.saudiImage,
                    width: Get.width / 15.3,
                    height: Get.height / 43.3,
                  ),
                ),
              )
            : null,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
