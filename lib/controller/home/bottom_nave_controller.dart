import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/order_page_controller.dart';
import 'package:naqla/services/services.dart';
import 'package:naqla/view/screen/home/message_page.dart';
import 'package:naqla/view/screen/home/orders_page.dart';
import 'package:naqla/view/screen/home/profile_page.dart';

import '../../core/functions/location_permission_function.dart';
import '../../view/screen/home/main_home.dart';

abstract class BottomNaveController extends GetxController {
  changePage(int index);
}

class BottomNaveControllerImp extends BottomNaveController {
  int currentIndex = 0;
  MyServices myServices = Get.find();

  List<Widget> pages = [
    const MainHome(),
    const OrdersPage(),
    const MessagePage(),
    const ProfilePage(),
  ];
  List<IconData> pagesIcon = [
    Icons.home_outlined,
    Icons.list_alt_rounded,
    Icons.messenger_outline_rounded,
    Icons.person_2_outlined,
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
    myServices.sharedPreferences.setString("step", "2");
    super.onInit();
  }

  @override
  changePage(int index) {
    currentIndex = index;
    if (index == 1) {
      OrderPageControllerImp orderPageControllerImp =
          Get.put(OrderPageControllerImp());
      orderPageControllerImp.changeCurrentIndex();
    }
    update();
  }
}
