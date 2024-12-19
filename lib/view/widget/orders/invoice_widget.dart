import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../global/text_custom.dart';

class InvoiceWidget extends StatelessWidget {
  final bool language;
  final void Function()? onTap;
  const InvoiceWidget({
    super.key,
    required this.language,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            InkWell(
              onTap: onTap,
              child: Container(
                width: Get.width / 2,
                padding: EdgeInsets.all(
                  Get.width / 15,
                ),
                decoration: BoxDecoration(
                  color: AppColor.dotColor,
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    bottomRight: Radius.circular(language ? 10 : 0),
                    bottomLeft: Radius.circular(language ? 0 : 10),
                    topRight: const Radius.circular(10),
                  ),
                ),
                child: Text("invoice".tr),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  color: AppColor.primaryColor,
                  size: Get.width / 30,
                ),
                Icon(
                  Icons.check,
                  color: AppColor.primaryColor,
                  size: Get.width / 30,
                ),
                const TextCustom(
                  text: "pm",
                  textColor: AppColor.gray2Color,
                ),
                const TextCustom(
                  text: "22:22",
                  textColor: AppColor.gray2Color,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
