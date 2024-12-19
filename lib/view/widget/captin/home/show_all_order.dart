import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';
import '../../global/text_custom.dart';

class ShowAllOrder extends StatelessWidget {
  final void Function()? onTap;
  const ShowAllOrder({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextCustom(
          text: "Latestcompletedorders".tr,
          fontWeight: FontWeight.w700,
          fontSize: Get.width / 23.75,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "all".tr,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: AppColor.primaryColor,
              fontSize: Get.width / 23.75,
            ),
          ),
        ),
      ],
    );
  }
}
