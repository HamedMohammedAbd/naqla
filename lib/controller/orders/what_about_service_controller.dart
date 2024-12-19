import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class WhatAboutServiceController extends GetxController {
  rateService(int index);
}

class WhatAboutServiceControllerImp extends WhatAboutServiceController {
  List<int> stars = [];
  late TextEditingController textEditingController;
  @override
  void onInit() {
    textEditingController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  rateService(index) {
    if (!stars.contains(index)) {
      stars.add(index);
    } else {
      stars.remove(index);
    }
    update();
  }
}
