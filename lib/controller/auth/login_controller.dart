import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/services/services.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUpPage();
}

class LoginControllerImp extends LoginController {
  late TextEditingController phoneNumberController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formState;
  final MyServices myServices = Get.find();
  @override
  void onInit() {
    phoneNumberController = TextEditingController();
    passwordController = TextEditingController();
    formState = GlobalKey<FormState>();
    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  goToSignUpPage() {
    Get.offAllNamed(AppRoutes.chooseUserType);
  }

  @override
  login() {
    myServices.sharedPreferences.setString("step", "2");
    Get.offAllNamed(AppRoutes.buttomNav);
  }
}
