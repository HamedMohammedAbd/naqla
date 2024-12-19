import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/auth/sign_up_controller.dart';

import '../global/text_custom.dart';

class ChangeCityClocationAuth extends StatelessWidget {
  const ChangeCityClocationAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpControllerImp>(builder: (controller) {
      return controller.isLocation
          ? Container(
              width: Get.width,
              height: Get.height / 4,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 40,
              ),
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  ...List.generate(
                    controller
                        .getSuggestion(controller.addressController.text)
                        .length,
                    (index) {
                      return ListTile(
                        onTap: () {
                          controller.addressController.text =
                              controller.getSuggestion(
                                  controller.addressController.text)[index];
                        },
                        title: TextCustom(
                          text: controller.getSuggestion(
                              controller.addressController.text)[index],
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : Container();
    });
  }
}
