import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/captin/home/captin_main_home_controller.dart';
import 'package:naqla/services/services.dart';

import '../../../core/functions/location_permission_function.dart';
import '../../../view/screen/captin/home/captin_main_home.dart';
import '../../../view/screen/captin/home/orders/captin_main_order.dart';
import '../../../view/screen/home/message_page.dart';
import '../../../view/screen/home/profile_page.dart';
import 'orders/captin_main_orders_controller.dart';

abstract class CaptinHomeNavController extends GetxController {
  changePage(int index);
  changeData();
}

class CaptinHomeNavControllerImp extends CaptinHomeNavController {
  late CaptinMainHomeControllerImp captinMainHomeControllerImp;
  late CaptinMainOrdersControllerImp captinMainOrdersControllerImp;
  int currentIndex = 0;
  MyServices myServices = Get.find();

  List<Widget> pages = [
    const CaptinMainHome(),
    const CaptinMainOrder(),
    const MessagePage(),
    const ProfilePage(),
  ];
  List<IconData> pagesIcon = [
    Icons.home_filled,
    Icons.shopping_bag_outlined,
    Icons.messenger_outline_rounded,
    Icons.person_4_outlined,
  ];
  List<String> pagesName = [
    "Home",
    "orders",
    "message",
    "profile",
  ];

  @override
  void onInit() {
    determinePosition();
    myServices.sharedPreferences.setString("step", "3");

    super.onInit();
  }

  @override
  changePage(int index) {
    currentIndex = index;
    update();
  }

  @override
  changeData() {
    captinMainHomeControllerImp = Get.put(CaptinMainHomeControllerImp());
    captinMainOrdersControllerImp = Get.put(CaptinMainOrdersControllerImp());
    captinMainHomeControllerImp.fromHere = false;
    captinMainHomeControllerImp.orderPage = null;
    captinMainOrdersControllerImp.page = 0;
    update();
  }
}
