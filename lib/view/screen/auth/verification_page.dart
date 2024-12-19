import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/auth/verification_page_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationPageControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppImage.verificationImage,
              ),
              SizedBox(
                height: Get.height / 50,
              ),
              TextCustom(
                text: "verification".tr,
                fontSize: Get.width / 20,
                fontWeight: FontWeight.bold,
              ),
              TextCustom(
                text: "enterCode".tr,
                fontSize: Get.width / 25,
                textColor: AppColor.grayColor,
              ),
              TextCustom(
                text: "+0979********",
                fontSize: Get.width / 25,
                textColor: AppColor.grayColor,
              ),
              GetBuilder<VerificationPageControllerImp>(builder: (controller) {
                return OtpTextField(
                  borderRadius: BorderRadius.circular(5),

                  numberOfFields: 4,
                  margin: const EdgeInsets.all(10),
                  borderColor: AppColor.primaryColor,
                  focusedBorderColor: AppColor.primaryColor,
                  cursorColor: AppColor.primaryColor,
                  enabled: true,
                  autoFocus: true,
                  fieldWidth: Get.width / 8,
                  // onCodeChanged: (value) => controller.isDoneFunction(value),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,

                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.isDoneFunction(verificationCode);
                  }, // end onSubmit
                );
              }),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextCustom(text: "InvalidCode".tr),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resend".tr,
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Get.height / 10,
              ),
              GetBuilder<VerificationPageControllerImp>(
                builder: (controller) {
                  return ButtonCustom(
                    color: controller.isDone
                        ? AppColor.primaryColor
                        : AppColor.grayColor,
                    width: Get.width / 1.3,
                    text: "verify".tr,
                    onTap: !controller.isDone
                        ? null
                        : () {
                            Get.offAllNamed(AppRoutes.buttomNav);
                          },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
