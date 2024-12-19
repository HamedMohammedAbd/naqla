import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';

import '../../../../controller/captin/home/captin_home_nav_controller.dart';
import '../../../widget/home_widget/material_button_nav.dart';

class CaptinHomeNav extends StatelessWidget {
  const CaptinHomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CaptinHomeNavControllerImp());
    return GetBuilder<CaptinHomeNavControllerImp>(
      builder: (controller) => Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(
            horizontal: Get.width / 29.2308,
            vertical: Get.height / 28.345,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(67),
            color: AppColor.delivaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                controller.pagesName.length,
                (i) {
                  return MaterialButtonNav(
                    onPressed: () {
                      controller.changePage(i);
                      controller.changeData();
                    },
                    iconData: controller.pagesIcon[i],
                    text: controller.pagesName[i].tr,
                    color: controller.currentIndex == i ? true : false,
                  );
                },
              ),
            ],
          ),
        ),
        body: controller.pages[controller.currentIndex],
      ),
    );
  }
}
