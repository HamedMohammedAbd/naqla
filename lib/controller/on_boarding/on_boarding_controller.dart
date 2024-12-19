import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/services/services.dart';

import '../../core/constant/app_route.dart';

abstract class OnBoardingController extends GetxController {
  netxPage();
  skipPages();
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int initPage = 0;
  MyServices myServices = Get.find();
  List<Map<String, String>> onBoardingListData = [
    {
      "image": AppImage.onBoardingOne,
      "text": "onBoardingOne".tr,
    },
    {
      "image": AppImage.onBoardingTwo,
      "text": "onBoardingTwo".tr,
    },
    {
      "image": AppImage.onBoardingThree,
      "text": "onBoardingThree".tr,
    },
  ];
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  netxPage() {
    initPage++;
    update();
    goToLoginPage();
  }

  goToLoginPage() {
    if (initPage > onBoardingListData.length - 1) {
      myServices.sharedPreferences.setString('step', "1");
      Get.offAllNamed(AppRoutes.loginPage);
    } else {
      pageController.nextPage(
        duration: const Duration(
          milliseconds: 500,
        ),
        curve: Curves.easeInOut,
      );
      update();
    }
  }

  @override
  skipPages() {
    Get.offAllNamed(AppRoutes.loginPage);
    myServices.sharedPreferences.setString('step', "1");
  }
}
