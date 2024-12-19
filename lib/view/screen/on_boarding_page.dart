import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../controller/on_boarding/on_boarding_controller.dart';
import '../../core/constant/app_color.dart';

class OnBoardingPage extends GetView<OnBoardingControllerImp> {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: Get.width / 10,
          right: Get.width / 10,
          bottom: Get.height / 20,
        ),
        child: ButtonCustom(
          text: "next".tr,
          height: Get.height / 20,
          borderRadius: 5,
          onTap: () {
            controller.netxPage();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              margin: EdgeInsets.all(
                Get.width / 40,
              ),
              child: ButtonCustom(
                text: "skip".tr,
                color: AppColor.grayColor.withOpacity(0.7),
                onTap: () {
                  controller.skipPages();
                },
                width: Get.width / 4.5,
                height: Get.height / 28,
                borderRadius: 30,
              ),
            ),
            SizedBox(
              height: Get.height / 1.4,
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: 3,
                itemBuilder: (context, index1) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: Get.height / 2.1,
                        width: Get.width,
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          controller.onBoardingListData[index1]["image"]!,
                          width: Get.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                          Get.width / 20,
                        ),
                        child: TextCustom(
                          text: controller.onBoardingListData[index1]["text"]!,
                          fontSize: Get.width / 20,
                          fontWeight: FontWeight.normal,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ...List.generate(
                            3,
                            (index) => GetBuilder<OnBoardingControllerImp>(
                              builder: (controller) => AnimatedContainer(
                                duration: const Duration(milliseconds: 900),
                                margin: EdgeInsets.symmetric(
                                  horizontal: Get.width / 100,
                                ),
                                width: Get.width / 40,
                                height: Get.height / 40,
                                decoration: BoxDecoration(
                                  color: index1 == index
                                      ? AppColor.primaryColor
                                      : AppColor.grayColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
