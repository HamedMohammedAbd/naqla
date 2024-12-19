import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/home/main_home_controller.dart';

import '../../../core/constant/app_color.dart';
import '../global/text_custom.dart';

class TypeCarWidget extends GetView<MainHomeControllerImp> {
  final String textType;
  final List<String> images;
  const TypeCarWidget({
    super.key,
    required this.textType,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToOrderPage(textType.tr);
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: Get.height / 60,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgrounColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextCustom(
              text: textType.tr,
              fontSize: Get.width / 23,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: Get.height / 10,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ...List.generate(
                    images.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.all(Get.width / 38.2),
                        child: Image.asset(
                          images[index],
                          width: Get.width / 4.25,
                          height: Get.height / 11.58,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
