import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';

class TextFormOrdersWidget extends StatelessWidget {
  const TextFormOrdersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      alignment: Alignment.center,
      height: Get.height / 30,
      width: Get.width / 5,
      child: TextFormField(
        textAlign: TextAlign.center, // محاذاة النص
        cursorHeight: 10,
        cursorColor: AppColor.primaryColor,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: "0.0",
          hintStyle: const TextStyle(
            height: 0.5,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
            ),
          ),
          focusColor: AppColor.primaryColor,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
