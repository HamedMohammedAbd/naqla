import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/captin/auth/sign_up_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/captin/auth/circle_page_widget.dart';

class StackPageWidget extends GetView<AdminSignUpPageControllerImp> {
  final int index1;
  const StackPageWidget({
    super.key,
    required this.index1,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: (Get.width / 42.2),
          child: Container(
            alignment: Alignment.center,
            width: Get.width / 1.7,
            height: 1,
            decoration: const BoxDecoration(
              color: AppColor.gray3Color,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ...List.generate(
              controller.currentPage.length,
              (index) => CirclePageWidget(
                index: index,
                text: controller.currentPage[index],
                currentIndex: index1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
