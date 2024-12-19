import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../../controller/captin/auth/sign_up_controller.dart';
import '../../../../core/constant/app_color.dart';
import '../../../widget/captin/auth/choose_image_widget.dart';
import '../../../widget/captin/auth/show_images.dart';
import '../../../widget/global/file_image_design.dart';

class PageThree extends GetView<AdminSignUpPageControllerImp> {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(Get.width / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            text: "Profilepicture".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "imageNow".tr,
            fontSize: Get.width / 31.67,
          ),
          GetBuilder<AdminSignUpPageControllerImp>(
            builder: (controller) {
              return ShowImages(
                image: controller.userProfileImage,
                onTap: () {
                  controller.chooseUserImage();
                },
              );
            },
          ),
          TextCustom(
            text: "Nationaidentity".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "showClearID".tr,
            fontSize: Get.width / 31.67,
          ),
          GetBuilder<AdminSignUpPageControllerImp>(
            builder: (controller) {
              return ShowImages(
                image: controller.userId,
                onTap: () {
                  controller.chooseIdImage();
                },
              );
            },
          ),
          TextCustom(
            text: "Carpicture".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "carShow".tr,
            fontSize: Get.width / 31.67,
          ),
          GetBuilder<AdminSignUpPageControllerImp>(
            builder: (controller) {
              return Wrap(
                children: [
                  ...List.generate(
                    controller.carImage!.length,
                    (index) {
                      return Container(
                        margin: EdgeInsets.all(Get.width / 30),
                        child: FileImageDesign(
                          height: Get.width / 6.262,
                          width: Get.width / 6.262,
                          image: controller.carImage![index],
                        ),
                      );
                    },
                  ),
                  ChooseImageWidget(
                    onTap: () => controller.chooseCarImage(),
                  ),
                ],
              );
            },
          ),
          TextCustom(
            text: "Carform".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "CarformShow".tr,
            fontSize: Get.width / 31.67,
          ),
          GetBuilder<AdminSignUpPageControllerImp>(
            builder: (controller) {
              return ShowImages(
                image: controller.confirmImage,
                onTap: () {
                  controller.chooseConfirmImageImage();
                },
              );
            },
          ),
          TextCustom(
            text: "Vehicleauthorization".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "CarformShow".tr,
            fontSize: Get.width / 31.67,
          ),
          GetBuilder<AdminSignUpPageControllerImp>(
            builder: (controller) {
              return ShowImages(
                image: controller.permission,
                onTap: () {
                  controller.choosePermissionImage();
                },
              );
            },
          ),
          TextCustom(
            text: "Selectpaymentmethod".tr,
            fontWeight: FontWeight.w700,
            fontSize: Get.width / 27.143,
          ),
          TextCustom(
            text: "howPay".tr,
            fontSize: Get.width / 31.67,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                controller.payTypeList.length,
                (index) {
                  return GetBuilder<AdminSignUpPageControllerImp>(
                    builder: (controller) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Radio(
                            fillColor:
                                WidgetStateProperty.all(AppColor.primaryColor),
                            value: controller.payTypeList[index],
                            groupValue: controller.payType,
                            onChanged: (value) {
                              controller.choosePayType(value.toString());
                            },
                          ),
                          TextCustom(
                            text: controller.payTypeList[index].tr,
                            fontWeight: controller.payType ==
                                    controller.payTypeList[index]
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
