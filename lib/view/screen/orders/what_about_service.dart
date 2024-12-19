import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/what_about_service_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';
import 'package:naqla/view/widget/orders/text_field_order_widget.dart';

class WhatAboutService extends GetView<WhatAboutServiceControllerImp> {
  const WhatAboutService({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WhatAboutServiceControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "Howwastheservice?".tr),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          Get.width / 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: Get.width / 6.6,
                backgroundColor: AppColor.imageBackColor,
                child: CircleAvatar(
                  radius: Get.width / 6.9,
                  backgroundImage: const AssetImage(AppImage.loginMan),
                ),
              ),
            ),
            TextCustom(
              text: "حامد محمد",
              fontSize: Get.width / 23.875,
            ),
            SizedBox(
              height: Get.height / 70,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(
                  5,
                  (index) {
                    return GetBuilder<WhatAboutServiceControllerImp>(
                      builder: (controller) {
                        return InkWell(
                          onTap: () {
                            controller.rateService(index);
                          },
                          child: controller.stars.indexOf(index) != index
                              ? const Icon(
                                  Icons.star_border,
                                  color: AppColor.gray2Color,
                                )
                              : const Icon(
                                  Icons.star,
                                  color: AppColor.starColor,
                                ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: Get.height / 30),
              width: Get.width,
              child: TextCustom(
                text: "WhatAboutService".tr,
                fontSize: Get.width / 27.3,
              ),
            ),
            TextFieldOrderWidget(
              hint: "goodCompany",
              textEditingController: controller.textEditingController,
            ),
            SizedBox(
              height: Get.height / 5,
            ),
            ButtonCustom(
              text: "send".tr,
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
