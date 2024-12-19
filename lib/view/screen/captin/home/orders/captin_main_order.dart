import 'package:flutter/material.dart';
import 'package:naqla/view/screen/captin/home/orders/available_orders.dart';

import '../../../../../controller/captin/home/orders/captin_main_orders_controller.dart';
import 'package:get/get.dart';

import '../../../../widget/captin/orders_widget.dart/top_avilable_previous.dart';
import 'previous_orders.dart';

class CaptinMainOrder extends GetView<CaptinMainOrdersControllerImp> {
  const CaptinMainOrder({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CaptinMainOrdersControllerImp());
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 20,
      ),
      child: Column(
        children: [
          SizedBox(
            height: Get.height / 15.223,
          ),
          const TopAvilablePrevious(),
          Expanded(
            child: PageView.builder(
              itemCount: 2,
              onPageChanged: (value) => controller.cahngePage(value),
              itemBuilder: (context, index) {
                return GetBuilder<CaptinMainOrdersControllerImp>(
                  builder: (controller) {
                    return controller.page == 0
                        ? const AvailableOrders()
                        : const PreviousOrders();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
