import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class AcceptLocation extends StatelessWidget {
  const AcceptLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "Locate".tr),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
            Get.width / 15,
          ),
          child: Column(
            children: [
              Image.asset(AppImage.locationImage),
              SizedBox(
                height: Get.height / 40,
              ),
              TextCustom(
                text: "Locate".tr,
                fontWeight: FontWeight.bold,
                fontSize: Get.width / 16,
              ),
              TextCustom(
                text: "chooseLocation".tr,
                fontWeight: FontWeight.bold,
                fontSize: Get.width / 25,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height / 5,
              ),
              ButtonCustom(
                text: "AllowAccess".tr,
                width: Get.width / 1.2,
                onTap: () {},
              ),
              SizedBox(
                height: Get.height / 40,
              ),
              ButtonCustom(
                color: AppColor.backgrounColor,
                textColor: AppColor.textColor,
                text: "AllowAccess".tr,
                width: Get.width / 1.2,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
