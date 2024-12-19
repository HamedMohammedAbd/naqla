import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';

import 'captin_home_nav_controller.dart';

abstract class CaptinMainHomeController extends GetxController {
  goToPageOrdersDetails(int page);
  goToNotificationPage();
}

class CaptinMainHomeControllerImp extends CaptinMainHomeController {
  CaptinHomeNavControllerImp captinHomeNavControllerImp = Get.find();
  int currentPage = 0;
  bool fromHere = false;
  int? orderPage;
  List<Map<String, String>> images = [
    {
      "image": AppImage.like,
      "text": "completed".tr,
    },
    {
      "image": AppImage.cancel,
      "text": "Excluded".tr,
    },
    {
      "image": AppImage.done,
      "text": "Inprogress".tr,
    },
    {
      "image": AppImage.wait,
      "text": "Waitingforapproval".tr,
    },
  ];
 
  @override
  goToPageOrdersDetails(int page) {
    if (captinHomeNavControllerImp.currentIndex != 1) {
      captinHomeNavControllerImp.changePage(1);
      fromHere = true;
    }
    orderPage = page;
    update();
  }

  @override
  goToNotificationPage() {
    Get.toNamed(AppRoutes.notificationPage);
  }
}
