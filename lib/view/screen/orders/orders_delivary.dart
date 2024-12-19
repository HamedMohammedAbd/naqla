import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/captin_offers.dart';
import '../../widget/global/text_custom.dart';
import '../../widget/orders/captins_offers.dart';

class OrdersDelivary extends StatelessWidget {
  const OrdersDelivary({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CaptinOffersImp());

    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "OrdersDelivary".tr),
      ),
      body: GetBuilder<CaptinOffersImp>(builder: (controller) {
        return ListView(
          padding: EdgeInsets.all(Get.width / 18),
          children: [
            ...List.generate(
              controller.offers.length,
              (index) {
                return CaptinsOffers(index);
              },
            ),
          ],
        );
      }),
    );
  }
}
