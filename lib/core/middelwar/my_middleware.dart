import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/services.dart';
import '../constant/app_route.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == "2") {
      return const RouteSettings(
        name: AppRoutes.buttomNav,
      );
    }
    if (myServices.sharedPreferences.getString('step') == "1") {
      return const RouteSettings(
        name: AppRoutes.loginPage,
      );
    }
    if (myServices.sharedPreferences.getString('step') == "3") {
      return const RouteSettings(
        name: AppRoutes.captinHomeNav,
      );
    }
    return null;
  }
}
