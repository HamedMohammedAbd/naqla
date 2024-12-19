import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/button_custom.dart';

Future<bool> onBack() async {
  Get.defaultDialog(
    title: "AreYouWantOut".tr,
    titleStyle: const TextStyle(fontWeight: FontWeight.bold),
    content: Container(),
    actions: [
      ButtonCustom(
        text: 'Yes'.tr,
        borderRadius: 5,
        width: Get.width / 4.5,
        onTap: () {
          exit(0);
        },
      ),
      ButtonCustom(
        width: Get.width / 4.5,
        borderRadius: 5,
        text: 'No'.tr,
        onTap: () {
          Get.back();
        },
      ),
    ],
  );
  return Future.value(true);
}
