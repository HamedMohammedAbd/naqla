import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';

import '../../../localization/change_local_controller.dart';
import '../../widget/global/text_custom.dart';
import '../../widget/localization_widget/choose_language.dart';

class LocalizationPage extends StatelessWidget {
  const LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLocaleController controller = Get.put(ChangeLocaleController());
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
                  controller.changeLanguageUser("english", "en");
                },
                onTap: () {
                  controller.changeLanguageUser("english", "en");
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
                  controller.changeLanguageUser("arabic", "ar");
                },
                onTap: () {
                  controller.changeLanguageUser("arabic", "ar");
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
