import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';
import '../../global/text_custom.dart';

class CirclePageWidget extends StatelessWidget {
  final int index, currentIndex;
  final String text;
  const CirclePageWidget({
    super.key,
    required this.index,
    required this.text,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: Get.width / 42.2,
          backgroundColor: currentIndex == index
              ? AppColor.primaryColor
              : AppColor.gray3Color,
          child: Center(
            child: TextCustom(
              text: "${index + 1}",
              textColor: currentIndex == index
                  ? AppColor.whiteColor
                  : AppColor.gray2Color,
              fontSize: Get.width / 38,
            ),
          ),
        ),
        SizedBox(
          height: Get.height / 60,
        ),
        TextCustom(
          text: text,
          fontSize: Get.width / 38,
        ),
      ],
    );
  }
}
