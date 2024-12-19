import 'package:get/get.dart';
import 'package:naqla/core/constant/app_route.dart';

abstract class SearchOrdersController extends GetxController {
  goToOrdersDelivery();
  cancelOrder();
}

class SearchOrdersControllerImp extends SearchOrdersController {
  @override
  void onInit() {
    goToOrdersDelivery();
    super.onInit();
  }

  @override
  goToOrdersDelivery() async {
    await Future.delayed(
      const Duration(seconds: 2),
      () {
        Get.toNamed(AppRoutes.ordersDelivary);
      },
    );
  }

  @override
  cancelOrder() {
    Get.back();
  }
}
