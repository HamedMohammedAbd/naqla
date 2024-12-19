import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/captin/home/orders/captin_main_orders_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../global/button_custom.dart';

class TopAvilablePrevious extends StatelessWidget {
  const TopAvilablePrevious({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 15.223,
      padding: EdgeInsets.all(
        Get.width / 60,
      ),
      decoration: const BoxDecoration(
        color: AppColor.colorBackGround,
      ),
      child: GetBuilder<CaptinMainOrdersControllerImp>(
        builder: (controller) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonCustom(
                text: "AvailableOffers".tr,
                width: Get.width / 2.497,
                color: controller.page == 0
                    ? AppColor.primaryColor
                    : AppColor.gray2Color.withOpacity(0.0),
                textColor: controller.page == 0
                    ? AppColor.whiteColor
                    : AppColor.gray2Color,
                onTap: () {
                  controller.cahngePage(0);
                },
              ),
              Container(
                height: Get.height / 24.177,
                width: 1,
                color: AppColor.gray2Color,
              ),
              ButtonCustom(
                text: "PreviousOffers".tr,
                width: Get.width / 2.497,
                color: controller.page == 1
                    ? AppColor.primaryColor
                    : AppColor.gray2Color.withOpacity(0.0),
                textColor: controller.page == 1
                    ? AppColor.whiteColor
                    : AppColor.gray2Color,
                onTap: () {
                  controller.cahngePage(1);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
