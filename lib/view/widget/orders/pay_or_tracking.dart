import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../global/button_custom.dart';
import '../global/text_custom.dart';

class PayOrTracking extends StatelessWidget {
  final bool language, isRow;
  final String title, button;
  final String? price;
  const PayOrTracking({
    super.key,
    required this.language,
    required this.title,
    required this.button,
    required this.isRow,
    this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(
                Get.width / 15,
              ),
              width: Get.width / 2,
              decoration: BoxDecoration(
                color: AppColor.dotColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  bottomRight: Radius.circular(language ? 0 : 10),
                  bottomLeft: Radius.circular(language ? 10 : 0),
                  topRight: const Radius.circular(10),
                ),
              ),
              child: Column(
                children: [
                  TextCustom(
                    text: title.tr,
                    fontWeight: FontWeight.bold,
                  ),
                  isRow
                      ? Row(
                          children: [
                            TextCustom(
                              text: "Deliveryinvoice".tr,
                              fontSize: Get.width / 31.84,
                            ),
                            const Spacer(),
                            TextCustom(text: "$price\$"),
                          ],
                        )
                      : Container(),
                  SizedBox(
                    height: Get.height / 30,
                  ),
                  ButtonCustom(
                    text: button.tr,
                    height: Get.height / 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: Get.width / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
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
            ),
          ],
        ),
      ],
    );
  }
}
