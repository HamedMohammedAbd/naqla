import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class ChooseUserTypePage extends StatelessWidget {
  const ChooseUserTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(
            Get.width / 20,
          ),
          child: Column(
            children: [
              TextCustom(
                text: "SignUserType".tr,
                fontSize: Get.width / 20,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              ButtonCustom(
                text: "captain".tr,
                onTap: () {
                  Get.toNamed(AppRoutes.captinSignUp);
                },
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              ButtonCustom(
                text: "user".tr,
                onTap: () {
                  Get.toNamed(AppRoutes.signUpPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
