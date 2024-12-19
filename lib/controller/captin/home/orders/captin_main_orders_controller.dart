import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view/screen/captin/home/orders/inprogress_orders.dart';
import '../../../../view/screen/captin/home/orders/Waiting_for_approval_orders.dart';
import '../../../../view/screen/captin/home/orders/canceld_orders.dart';
import '../../../../view/screen/captin/home/orders/done_orders.dart';
import '../captin_main_home_controller.dart';

abstract class CaptinMainOrdersController extends GetxController {
  cahngePage(int index);
  orderPageOpen();
}

class CaptinMainOrdersControllerImp extends CaptinMainOrdersController {
  CaptinMainHomeControllerImp captinMainHomeControllerImp = Get.find();
  int currentPageChoosen = 0;
  int page = 0;
  List<Widget> pages = [
    const DoneOrders(),
    const CanceldOrders(),
    const InprogressOrders(),
    const WaitingForApprovalOrders(),
  ];
  @override
  void onInit() {
    orderPageOpen();
    super.onInit();
  }

  @override
  cahngePage(int index) {
    page = index;
    update();
  }

  @override
  orderPageOpen() {
    if (captinMainHomeControllerImp.fromHere) {
      page = 1;
      currentPageChoosen = captinMainHomeControllerImp.orderPage!;
    } else {
      page = 0;
    }
    update();
  }

  changeCurrentPageOrder() {
    currentPageChoosen = captinMainHomeControllerImp.orderPage!;
    update();
  }
}
