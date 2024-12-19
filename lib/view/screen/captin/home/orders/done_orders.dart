import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../widget/captin/orders_widget.dart/orders_design_widget.dart';

class DoneOrders extends StatelessWidget {
  const DoneOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return OrdersDesignWidget(
          isButton: false,
          text: "completed".tr,
        );
      },
    );
  }
}
