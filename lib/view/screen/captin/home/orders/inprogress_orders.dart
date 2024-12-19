import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';

import '../../../../widget/captin/orders_widget.dart/orders_design_widget.dart';

class InprogressOrders extends StatelessWidget {
  const InprogressOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return OrdersDesignWidget(
          isButton: false,
          text: "Inprogress".tr,
          textColor:AppColor.blueColor,
        );
      },
    );
  }
}
