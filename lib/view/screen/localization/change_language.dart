import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';

import '../../../controller/home/profile_page_controller.dart';
import '../../widget/global/text_custom.dart';
import '../../widget/localization_widget/choose_language.dart';

class ChangeLanguage extends GetView<ProfilePageControllerImp> {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfilePageControllerImp());

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: Get.width / 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage(AppImage.localizationImage),
                width: Get.width / 3.5,
                height: Get.width / 3.5,
              ),
              SizedBox(
                height: Get.height / 20,
              ),
              SizedBox(
                width: Get.width,
                child: TextCustom(
                  text: "chooseLanguage".tr,
                  fontWeight: FontWeight.bold,
                  textAlign: TextAlign.start,
                  fontSize: Get.width / 22,
                ),
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              ChooseLanguage(
                text: 'english',
                value: 'english',
                groupValue: controller.isChoosen,
                onChanged: (value) {
                  controller.changeLanguage("en");
                },
                onTap: () {
                  controller.changeLanguage("en");
                },
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              ChooseLanguage(
                text: 'arabic',
                value: 'arabic',
                groupValue: controller.isChoosen,
                onChanged: (value) {
                  controller.changeLanguage("ar");
                },
                onTap: () {
                  controller.changeLanguage("ar");
                },
              ),
              SizedBox(
                height: Get.height / 10,
              ),
              TextCustom(
                text: "youCanChangeLanguage".tr,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
