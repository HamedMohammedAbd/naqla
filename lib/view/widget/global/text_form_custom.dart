import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class TextFormCustom extends StatelessWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController controller;
  final String? Function(String? value)? validation;
  final Widget? suffix;
  final void Function(String)? onChanged;

  const TextFormCustom({
    super.key,
    required this.hint,
    this.isPassword = false,
    required this.controller,
    required this.validation,
    this.suffix,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validation,
      cursorColor: AppColor.primaryColor,
      obscureText: isPassword,
      decoration: InputDecoration(
        focusColor: AppColor.primaryColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: AppColor.primaryColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(
            color: AppColor.grayColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: Get.width / 20,
        ),
        hintText: hint,
        suffixIcon: suffix,
        hintStyle: const TextStyle(
          color: AppColor.grayColor,
        ),
      ),
    );
  }
}
