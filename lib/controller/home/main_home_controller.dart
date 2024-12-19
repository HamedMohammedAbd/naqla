import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';

abstract class MainHomeController extends GetxController {
  goToOrderPage(String type);
  goToNotificationPage();
}

class MainHomeControllerImp extends MainHomeController {
  List<String> halfImage = [
    AppImage.car1Image,
    AppImage.car2Image,
    AppImage.car3Image,
  ];
  List<String> fullImage = [
    AppImage.full1Image,
    AppImage.full2Image,
    AppImage.full3Image,
  ];

  @override
  goToOrderPage(String type) {
    Get.toNamed(AppRoutes.userPage, arguments: {
      "appBar": type,
    });
  }

  @override
  goToNotificationPage() {
    Get.toNamed(AppRoutes.notificationPage);
  }
}
