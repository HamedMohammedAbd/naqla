import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../global/text_custom.dart';

class ImageTitleRequestOrder extends StatelessWidget {
  final String title, image, descrebtion;
  const ImageTitleRequestOrder({
    super.key,
    required this.title,
    required this.image,
    required this.descrebtion,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: Get.width / 8.15,
        ),
        SizedBox(
          width: Get.width / 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Get.height / 50,
              ),
              TextCustom(
                text: title,
                fontWeight: FontWeight.w700,
                fontSize: Get.width / 23.875,
              ),
              SizedBox(
                height: Get.height / 150,
              ),
              TextCustom(
                text: descrebtion,
                fontSize: Get.width / 31.84,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
