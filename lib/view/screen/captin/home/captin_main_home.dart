import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../controller/captin/home/captin_main_home_controller.dart';
import '../../../widget/captin/home/circle_widget.dart';
import '../../../widget/captin/home/last_orders.dart';
import '../../../widget/captin/home/show_all_order.dart';
import '../../../widget/home_widget/app_bar_home_widget.dart';
import '../../../widget/home_widget/search_widget.dart';

class CaptinMainHome extends GetView<CaptinMainHomeControllerImp> {
  const CaptinMainHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CaptinMainHomeControllerImp());
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 15,
        vertical: Get.height / 90,
      ),
      child: Column(
        children: [
          const AppBarHomeWidget(),
          SizedBox(
            height: Get.height / 90,
          ),
          SearchWidget(
            onTap: () => controller.goToNotificationPage(),
          ),
          SizedBox(
            height: Get.height / 20,
          ),
          CircleWidget(
            onTap: () {},
          ),
          SizedBox(
            height: Get.height / 30,
          ),
          ShowAllOrder(onTap: () {}),
          SizedBox(
            height: Get.height / 68.5,
          ),
          const LastOrders(),
        ],
      ),
    );
  }
}
