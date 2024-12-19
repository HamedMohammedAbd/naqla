import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../../core/constant/app_color.dart';
import '../../global/button_custom.dart';

class OrdersDesignWidget extends StatelessWidget {
  final bool isButton;
  final String text;
  final Color? textColor;
  const OrdersDesignWidget({
    super.key,
    required this.isButton,
    required this.text,
    this.textColor = AppColor.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: Get.height / 70,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 40,
        vertical: Get.height / 68.5,
      ),
      height: Get.height / 9,
      decoration: BoxDecoration(
        color: AppColor.colorBackGround,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: "#78787",
                fontSize: Get.width / 23.88,
              ),
              TextCustom(
                text: "توصيل اثاث منزلي",
                fontSize: Get.width / 27.3,
              ),
              TextCustom(
                text: "22/10/2022",
                fontSize: Get.width / 31.84,
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextCustom(
                text: text,
                textColor: textColor,
                fontSize: Get.width / 27.3,
              ),
              const Spacer(),
              isButton
                  ? ButtonCustom(
                      text: "submit".tr,
                      width: Get.width / 5.46,
                      height: Get.height / 34.25,
                      onTap: () {},
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
