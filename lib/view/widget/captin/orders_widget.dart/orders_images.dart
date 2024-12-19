import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_image.dart';
import '../../global/text_custom.dart';

class OrdersImages extends StatelessWidget {
  const OrdersImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const TextCustom(
          text: "صور المنقولات :",
          fontWeight: FontWeight.w700,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Wrap(
                children: [
                  ...List.generate(
                    2,
                    (index) => Container(
                      margin: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Image.asset(
                          AppImage.saudiImage,
                          width: Get.width / 4,
                          height: Get.width / 6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
