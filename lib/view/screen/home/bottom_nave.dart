import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/home/bottom_nave_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/home_widget/material_button_nav.dart';

class BottomNave extends StatelessWidget {
  const BottomNave({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BottomNaveControllerImp());
    return GetBuilder<BottomNaveControllerImp>(
      builder: (controller) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primaryColor,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              AppImage.homeImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: AppColor.buttomNavColor,
          shape: const CircularNotchedRectangle(),
          child: Row(
            children: [
              ...List.generate(
                controller.pages.length + 1,
                (index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : MaterialButtonNav(
                          onPressed: () => controller.changePage(i),
                          iconData: controller.pagesIcon[i],
                          text: controller.pagesName[i].tr,
                          color: controller.currentIndex == i ? true : false,
                        );
                },
              ),
            ],
          ),
        ),
        body: controller.pages.elementAt(controller.currentIndex),
      ),
    );
  }
}
