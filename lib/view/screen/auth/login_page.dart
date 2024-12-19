import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/auth/login_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../core/functions/on_back_function.dart';
import '../../widget/auth_widget/text_form_with_label.dart';

class LoginPage extends GetView<LoginControllerImp> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return PopScope(
      canPop: true,
      onPopInvokedWithResult: (didPop, result) => onBack(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 15,
            ),
            child: Column(
              children: [
                Image.asset(
                  AppImage.loginImage,
                  width: Get.width / 1.1,
                  height: Get.width / 1.1,
                ),
                Form(
                  key: controller.formState,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormWithLabel(
                        label: 'phoneNumber',
                        hint: '+7887********',
                        textEditingController: controller.phoneNumberController,
                      ),
                      SizedBox(
                        height: Get.height / 60,
                      ),
                      TextFormWithLabel(
                        label: 'password',
                        hint: '***********',
                        textEditingController: controller.passwordController,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: Get.height / 100,
                ),
                SizedBox(
                  width: Get.width,
                  child: TextCustom(
                    text: "ForgetPassword".tr,
                    textColor: AppColor.primaryColor,
                    fontSize: Get.width / 25,
                  ),
                ),
                SizedBox(
                  height: Get.height / 20,
                ),
                ButtonCustom(
                  text: "login".tr,
                  onTap: () {
                    controller.login();
                  },
                  height: Get.height / 22,
                  borderRadius: 5,
                ),
                SizedBox(
                  height: Get.height / 40,
                ),
                TextButton(
                  onPressed: () {
                    controller.goToSignUpPage();
                  },
                  child: Text("createAccount".tr),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
