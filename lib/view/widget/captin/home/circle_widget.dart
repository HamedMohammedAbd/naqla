import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/captin/home/captin_main_home_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../global/text_custom.dart';

class CircleWidget extends GetView<CaptinMainHomeControllerImp> {
  final void Function()? onTap;
  const CircleWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ...List.generate(
          4,
          (index) => InkWell(
            onTap: () {
              controller.goToPageOrdersDetails(index);
              onTap!();
            },
            child: GetBuilder<CaptinMainHomeControllerImp>(
              builder: (controller) {
                return SizedBox(
                  width: Get.width / 4.75,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: Get.width / 7.037,
                        width: Get.width / 7.037,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: controller.orderPage != null &&
                                    controller.orderPage == index
                                ? AppColor.primaryColor
                                : AppColor.gray,
                          ),
                        ),
                        child: CircleAvatar(
                          radius: Get.width / 16.522,
                          backgroundColor: AppColor.gray,
                          child: Image.asset(
                            controller.images[index]["image"]!,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Get.height / 100,
                      ),
                      const TextCustom(
                        text: "10",
                        fontWeight: FontWeight.bold,
                      ),
                      FittedBox(
                        child: TextCustom(
                          text: controller.images[index]["text"]!,
                          fontSize: Get.width / 31.67,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
