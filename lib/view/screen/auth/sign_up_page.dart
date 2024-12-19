import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/auth/sign_up_controller.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/view/widget/auth_widget/text_form_with_label.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import '../../../core/functions/on_back_function.dart';
import '../../widget/auth_widget/search_city.dart';
import '../../widget/auth_widget/stack_image.dart';

class SignUpPage extends GetView<SignUpControllerImp> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpControllerImp());
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => onBack(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.offNamed(AppRoutes.chooseUserType);
              },
              icon: const Icon(Icons.arrow_back)),
        ),
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
                GetBuilder<SignUpControllerImp>(builder: (controller) {
                  return StackImage(
                    image: controller.image,
                    onTap: () {
                      controller.chooseImage();
                    },
                  );
                }),
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
                const SearchCity(),
                SizedBox(
                  height: Get.height / 10,
                ),
                ButtonCustom(
                  text: "done".tr,
                  onTap: () => controller.goToVerificationPage(),
                ),
                SizedBox(
                  height: Get.height / 60,
                ),
                TextButton(
                  onPressed: () => controller.goToLoginPage(),
                  child: Text("youHaveAccount".tr),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
