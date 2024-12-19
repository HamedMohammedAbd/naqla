import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OrderPageController extends GetxController {
  void changePage(int index);
}

class OrderPageControllerImp extends OrderPageController {
  int currentIndex = 0;
  int pageNow = 0;
  late PageController pageController;
  List<String> pages = [
    "Coming".tr,
    "cancel".tr,
    "Completed".tr,
  ];
  List<Map<String, dynamic>> orders = <Map<String, dynamic>>[
    {
      "icon": Icons.calendar_month,
      "Text": "الشهر الماضي",
      "color": Colors.red,
    },
    {
      "icon": Icons.location_on,
      "Text": " الشجاعية - ابو صبحي للعجلات",
      "color": const Color.fromARGB(255, 24, 37, 61),
    },
    {
      "icon": Icons.phone,
      "Text": "+8979787876",
      "color": const Color.fromARGB(255, 24, 37, 61),
    }
  ];
  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }

  @override
  changePage(int index) {
    currentIndex = index;

    update();
  }

  animateTo() {
    pageController.jumpToPage(currentIndex);
  }

  changeCurrentIndex() {
    currentIndex = 0;
    update();
  }
}
