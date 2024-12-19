import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_image.dart';
import '../global/text_custom.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: Get.height / 11.11,
        ),
        Row(
          children: [
            TextCustom(
              text: "Hello".tr,
              fontWeight: FontWeight.bold,
              fontSize: Get.width / 24.38,
            ),
            SizedBox(
              width: Get.width / 20,
            ),
            Image.asset(
              AppImage.hiImage,
              width: Get.width / 16.25,
            ),
          ],
        ),
        SizedBox(
          height: Get.height / 150,
        ),
        Row(
          children: [
            TextCustom(
              text: "Delivery".tr,
              fontWeight: FontWeight.bold,
              fontSize: Get.width / 24.38,
            ),
            TextCustom(
              text: "It'sEasy".tr,
              fontWeight: FontWeight.normal,
              fontSize: Get.width / 24.38,
            ),
          ],
        ),
      ],
    );
  }
}
