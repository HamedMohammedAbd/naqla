import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/home/profile_page_edit_data_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/auth_widget/stack_image.dart';
import 'package:naqla/view/widget/auth_widget/text_form_with_label.dart';

import '../../widget/auth_widget/change_city_location_auth.dart';

class ProfilePageEditData extends GetView<ProfilePageEditDataControllerImp> {
  const ProfilePageEditData({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfilePageEditDataControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: Get.width / 15,
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height / 20,
              ),
              GetBuilder<ProfilePageEditDataControllerImp>(
                builder: (controller) {
                  return StackImage(
                    onTap: () {
                      controller.editImage();
                    },
                    name: "حامد عبد",
                  );
                },
              ),
              SizedBox(
                height: Get.height / 100,
              ),
              TextFormWithLabel(
                label: 'name',
                hint: 'nameHint'.tr,
                textEditingController: controller.nameController,
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              TextFormWithLabel(
                label: 'family',
                hint: 'familyHint'.tr,
                textEditingController: controller.lastNameController,
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              TextFormWithLabel(
                label: 'phoneNumber',
                hint: '+87*********',
                textEditingController: controller.phoneNumberController,
                suffix: Container(
                  padding: const EdgeInsets.all(5),
                  child: Image.asset(
                    AppImage.saudiImage,
                    height: 3,
                    width: 3,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: Get.height / 60,
              ),
              TextFormWithLabel(
                label: 'address',
                hint: 'addressHint'.tr,
                textEditingController: controller.addressController,
                suffix: IconButton(
                  onPressed: () => controller.isLocationFunction(),
                  icon: const Icon(
                    Icons.keyboard_arrow_down_rounded,
                  ),
                ),
                onChanged: (value) {
                  controller.onChange(value);
                },
              ),
              const ChangeCityLocationAuth(),
              SizedBox(
                height: Get.height / 60,
              ),
              InkWell(
                onTap: () => controller.deleteMyAccount(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.person_2_outlined,
                      color: AppColor.redColor,
                    ),
                    Text(
                      "DeleteMyAccount".tr,
                      style: const TextStyle(
                        color: AppColor.redColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
