import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';
import '../../global/text_custom.dart';

class AreaWidget extends StatelessWidget {
  const AreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextCustom(
              text: "منطقة التحميل :",
              fontSize: Get.width / 23.875,
            ),
            TextCustom(
              text: "شارع الملك ",
              fontSize: Get.width / 23.875,
              textColor: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        SizedBox(
          height: Get.height / 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextCustom(
              text: "منطقة التنزيل :",
              fontSize: Get.width / 23.875,
            ),
            TextCustom(
              text: "شارع العام ",
              fontSize: Get.width / 23.875,
              textColor: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ],
    );
  }
}
