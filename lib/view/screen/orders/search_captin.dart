import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/search_orders_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../core/constant/app_image.dart';

class SearchCaptin extends GetView<SearchOrdersControllerImp> {
  const SearchCaptin({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearchOrdersControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "Lookingforacaptain".tr),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 15),
          child: Column(
            children: [
              Image.asset(
                AppImage.searchBackGroundImage,
                width: Get.width / 1.8,
                height: Get.height / 5.27,
              ),
              SizedBox(
                height: Get.height / 15.1,
              ),
              TextCustom(
                text: "Pleasewait".tr,
                textColor: AppColor.primaryColor,
                fontSize: Get.width / 22.2,
              ),
              TextCustom(
                text: "waitText".tr,
                textAlign: TextAlign.center,
                fontSize: Get.width / 27.3,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(
          Get.width / 15,
        ),
        child: ButtonCustom(
          text: "cancelOrder".tr,
          onTap: () {
            controller.cancelOrder();
          },
        ),
      ),
    );
  }
}
