import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';

import '../global/text_custom.dart';

class CaptinOfferDetails extends StatelessWidget {
  final double rating, price;
  final String time;
  const CaptinOfferDetails({
    super.key,
    required this.rating,
    required this.price,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextCustom(
          text: "$rating",
          fontSize: Get.width / 31.84,
        ),
        Icon(
          Icons.star,
          color: AppColor.starColor,
          size: Get.width / 38.2,
        ),
        const Spacer(),
        TextCustom(
          text: "المدة $time ساعات",
          fontSize: Get.width / 28.2,
        ),
        const Spacer(),
        TextCustom(
          text: "سعر التوصيل $price ر.س",
          fontSize: Get.width / 38.2,
        ),
      ],
    );
  }
}
