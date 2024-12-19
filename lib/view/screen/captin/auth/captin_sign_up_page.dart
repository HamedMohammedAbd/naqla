import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/captin/auth/stack_page_widget.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../../controller/captin/auth/sign_up_controller.dart';
import '../../../widget/global/button_custom.dart';

class CaptinSignUpPage extends GetView<AdminSignUpPageControllerImp> {
  const CaptinSignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AdminSignUpPageControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(
          text: "captinSignUp".tr,
        ),
      ),
      body: PageView.builder(
        itemCount: controller.pages.length,
        onPageChanged: (int value) {
          controller.changePage(value);
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              GetBuilder<AdminSignUpPageControllerImp>(
                builder: (controller) {
                  return StackPageWidget(
                    index1: controller.currentIndex,
                  );
                },
              ),
              SizedBox(
                height: Get.height / 35,
              ),
              Expanded(
                child: GetBuilder<AdminSignUpPageControllerImp>(
                    builder: (controller) {
                  return controller.pages[controller.currentIndex];
                }),
              ),
              //      SizedBox(
              //   height: Get.height / 7.3,
              // ),
              Padding(
                padding: EdgeInsets.all(
                  Get.width / 15,
                ),
                child: ButtonCustom(
                  text: "next".tr,
                  onTap: () {
                    controller.goToNextPage();
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
