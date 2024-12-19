import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/order_page_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class OrdersPageOne extends StatelessWidget {
  const OrdersPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OrderPageControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: TextCustom(text: "orders".tr),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GetBuilder<OrderPageControllerImp>(
              builder: (controller) {
                return Container(
                  margin: EdgeInsets.all(Get.width / 16),
                  height: Get.height / 15.3,
                  width: Get.width,
                  decoration: BoxDecoration(
                    color: AppColor.color99,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      ...List.generate(
                        controller.pages.length,
                        (index) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ButtonCustom(
                                width: Get.width / 3.86,
                                height: Get.height / 18.7,
                                text: controller.pages[index],
                                textColor: controller.currentIndex == index
                                    ? AppColor.color99
                                    : AppColor.gray2Color,
                                color: controller.currentIndex == index
                                    ? AppColor.primaryColor
                                    : AppColor.color99,
                                onTap: () {
                                  controller.changePage(index);
                                },
                              ),
                              if (index == 0 || index == 1)
                                Container(
                                  margin: const EdgeInsets.all(5),
                                  height: Get.height / 22,
                                  width: 1,
                                  color: AppColor.grayColor,
                                ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 6,
            child: GetBuilder<OrderPageControllerImp>(
              builder: (controller) {
                return PageView.builder(
                  controller: controller.pageController,
                  onPageChanged: (index) => controller.changePage(index),
                  itemCount: controller.pages.length,
                  itemBuilder: (context, index1) {
                    return ListView(
                      padding: EdgeInsets.all(Get.width / 16),
                      children: [
                        SizedBox(
                          height: Get.height / 3.36,
                          child: Card(
                            color: AppColor.backgrounColor,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextCustom(
                                        text: "نقل عفش",
                                        fontSize: Get.width / 23.875,
                                      ),
                                      const Spacer(),
                                      const Icon(
                                        Icons.more_vert,
                                        color: AppColor.textColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Get.height / 50,
                                  ),
                                  ...List.generate(
                                    controller.orders.length,
                                    (index) {
                                      return Container(
                                        margin: EdgeInsets.only(
                                          bottom: Get.height / 100,
                                        ),
                                        child: Row(
                                          children: [
                                            Icon(
                                              controller.orders[index]["icon"],
                                              color: controller.orders[index]
                                                  ["color"],
                                            ),
                                            SizedBox(
                                              width: Get.width / 50,
                                            ),
                                            TextCustom(
                                              text: controller.orders[index]
                                                  ["Text"],
                                              fontSize: Get.width / 31.84,
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  if (index1 == 0)
                                    const Text("سيتم اعلامك عند تقلي العروض"),
                                  const Spacer(),
                                  if (index1 != 0) const Divider(),
                                  if (index1 != 0)
                                    TextCustom(text: controller.pages[index1]),
                                  if (index1 == 0)
                                    Center(
                                      child: ButtonCustom(
                                        text: "العروض و الاسعار",
                                        width: Get.width / 3.24,
                                        height: Get.height / 24.2,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
