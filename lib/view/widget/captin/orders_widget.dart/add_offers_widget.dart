import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/text_custom.dart';
import 'text_form_orders_widget.dart';

class AddOffersWidget extends StatelessWidget {
  const AddOffersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Row(
              children: [
                TextCustom(
                  text: "أضف عرضك",
                  fontSize: Get.width / 23.875,
                  fontWeight: FontWeight.w700,
                ),
                const TextFormOrdersWidget(),
                TextCustom(
                  text: "ريال سعودي",
                  fontSize: Get.width / 38.2,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            const Spacer(),
            Row(
              children: [
                TextCustom(
                  text: "أقصى مدة نقل",
                  fontSize: Get.width / 23.785,
                  fontWeight: FontWeight.w700,
                ),
                const TextFormOrdersWidget(),
                TextCustom(
                  text: "بالساعة",
                  fontSize: Get.width / 38.2,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
