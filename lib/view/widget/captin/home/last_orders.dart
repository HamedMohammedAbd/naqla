import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';
import '../../global/button_custom.dart';
import '../../global/text_custom.dart';

class LastOrders extends StatelessWidget {
  const LastOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 8.4743,
      decoration: const BoxDecoration(
        color: AppColor.delivaryColor,
      ),
      child: ListTile(
        title: TextCustom(
          text: "نقل سريع",
          fontSize: Get.width / 23.75,
          fontWeight: FontWeight.w700,
        ),
        subtitle: TextCustom(
          text: "توصيل صندوق مستلزمات سباكة للبيت",
          fontSize: Get.width / 27.23,
          fontWeight: FontWeight.w700,
        ),
        trailing: ButtonCustom(
          text: "Delivered".tr,
          width: Get.width / 5.09334,
          height: Get.height / 32.88,
          onTap: () {},
        ),
      ),
    );
  }
}
