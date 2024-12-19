import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/orders/user_order_controller.dart';
import '../../../core/constant/app_color.dart';

class CarTypeWidget extends StatelessWidget {
  const CarTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height / 27.4,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: Get.width / 16),
        scrollDirection: Axis.horizontal,
        children: [
          GetBuilder<UserOrderControllerImp>(
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    controller.carsType.length,
                    (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                          left: Get.width / 16,
                        ),
                        child: InkWell(
                          onTap: () {
                            controller.carTypeUsing(index);
                          },
                          child: Text(
                            controller.carsType[index],
                            style: TextStyle(
                              decoration: controller.currentIndex == index
                                  ? TextDecoration.underline
                                  : TextDecoration.none,
                              fontSize: Get.width / 31.8,
                              color: controller.currentIndex == index
                                  ? AppColor.primaryColor
                                  : AppColor.gray2Color,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
