import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/captin/home/circle_widget.dart';

import '../../../../../controller/captin/home/orders/captin_main_orders_controller.dart';

class PreviousOrders extends GetView<CaptinMainOrdersControllerImp> {
  const PreviousOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Get.height / 50,
        ),
        CircleWidget(
          onTap: () {
            controller.changeCurrentPageOrder();
          },
        ),
        Expanded(
          child: GetBuilder<CaptinMainOrdersControllerImp>(
            builder: (controller) =>
                controller.pages[controller.currentPageChoosen],
          ),
        ),
      ],
    );
  }
}
