import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/home_widget/app_bar_home_widget.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../controller/home/main_home_controller.dart';
import '../../widget/home_widget/search_widget.dart';
import '../../widget/home_widget/type_car_widget.dart';

class MainHome extends GetView<MainHomeControllerImp> {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(MainHomeControllerImp());
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 15,
        vertical: Get.height / 90,
      ),
      child: Column(
        children: [
          const AppBarHomeWidget(),
          SizedBox(
            height: Get.height / 90,
          ),
          SearchWidget(
            onTap: () => controller.goToNotificationPage(),
          ),
          SizedBox(
            height: Get.height / 50,
          ),
          SizedBox(
            width: Get.width,
            child: TextCustom(
              text: "ourService".tr,
              fontWeight: FontWeight.bold,
              fontSize: Get.width / 21.3,
            ),
          ),
          SizedBox(
            height: Get.height / 25,
          ),
          TypeCarWidget(
            textType: 'half',
            images: controller.halfImage,
          ),
          TypeCarWidget(
            textType: 'full',
            images: controller.fullImage,
          ),
        ],
      ),
    );
  }
}
