import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/captin/auth/sign_up_controller.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../widget/captin/auth/drop_menu_widget.dart';
import '../../../widget/captin/auth/text_form_custom.dart';

class PageOne extends GetView<AdminSignUpPageControllerImp> {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(Get.width / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            text: "carTypeChoose".tr,
            fontSize: Get.width / 27.143,
          ),
          DropMenuWidget(
            menuList: controller.menuList,
          ),
          SizedBox(
            height: Get.height / 35,
          ),
          TextCustom(
            text: "showName".tr,
            fontSize: Get.width / 31.8,
          ),
          SizedBox(
            height: Get.height / 55,
          ),
          AdminTextFormCustom(
            hint: 'name',
            textEditingController: controller.firstNameController,
            validator: (value) {
              return null;
            },
          ),
          SizedBox(
            height: Get.height / 55,
          ),
          AdminTextFormCustom(
            hint: 'family',
            textEditingController: controller.firstNameController,
            validator: (value) {
              return null;
            },
          ),
          SizedBox(
            height: Get.height / 40,
          ),
          TextCustom(text: "SendJob".tr),
          SizedBox(
            height: Get.height / 55,
          ),
          DropMenuWidget(
            menuList: controller.citiesList,
            hint: "city".tr,
          ),
        ],
      ),
    );
  }
}
