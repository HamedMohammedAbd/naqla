import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/services/services.dart';
import 'package:naqla/view/widget/global/button_custom.dart';

import 'bottom_nave_controller.dart';

abstract class ProfilePageController extends GetxController {
  goToEditData();
  List<Map<String, dynamic>> addData();
  logout();
}

class ProfilePageControllerImp extends ProfilePageController {
  List<Map<String, dynamic>> profileData = [];
  Locale? language;
  MyServices myServicesController = Get.find();
  String? isChoosen;

  @override
  addData() {
    profileData.clear();
    profileData.addAll([
      {
        "title": "Personalinformation".tr,
        "image": AppImage.personImage,
      },
      {
        "title": "Paymentinformation".tr,
        "image": AppImage.payImage,
      },
      {
        "title": "Languagesettings".tr,
        "image": AppImage.localizationImageProfile,
      },
      {
        "title": "Ratings".tr,
        "image": AppImage.starImage,
      },
      {
        "title": "privacypolicy".tr,
        "image": AppImage.homeImage,
      },
      {
        "title": "logout".tr,
        "image": AppImage.logoutImage,
      },
    ]);
    return profileData;
  }

  goToPage(index) {
    if (index == 0) {
      Get.toNamed(AppRoutes.editData);
    }
    if (index == 2) {
      Get.toNamed(AppRoutes.changeLanguage);
    }
    if (index == 5) {
      logout();
    }
  }

  @override
  goToEditData() {
    Get.toNamed(AppRoutes.editData);
  }

  void changeLanguage(String languageCode) {
    Locale locale = Locale(languageCode);
    myServicesController.sharedPreferences.setString('language', languageCode);
    Get.updateLocale(locale);
    Get.put(BottomNaveControllerImp());

    Get.back();
  }

  @override
  logout() {
    Get.defaultDialog(
      title: "logout".tr,
      middleText: "logoutBody".tr,
      cancel: ButtonCustom(
        text: "No".tr,
        width: Get.width / 4,
        height: Get.height / 30,
        onTap: () {
          Get.back();
        },
      ),
      confirm: ButtonCustom(
        text: "Yes".tr,
        width: Get.width / 4,
        height: Get.height / 30,
        onTap: () {
          Get.offAllNamed(AppRoutes.loginPage);
          myServicesController.sharedPreferences.setString("step", "1");
        },
      ),
    );
  }
}
