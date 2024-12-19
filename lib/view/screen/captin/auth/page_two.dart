import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/captin/auth/sign_up_controller.dart';
import '../../../widget/captin/auth/text_form_custom.dart';
import '../../../widget/global/text_custom.dart';

class PageTwo extends GetView<AdminSignUpPageControllerImp> {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(Get.width / 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextCustom(
            text: "phoneNumber".tr,
            fontSize: Get.width / 27.143,
            fontWeight: FontWeight.w700,
          ),
          AdminTextFormCustom(
            hint: '6796869',
            textEditingController: controller.phoneNumberController,
            isSuffix: true,
            validator: (value) {
              return null;
            },
          ),
        ],
      ),
    );
  }
}
