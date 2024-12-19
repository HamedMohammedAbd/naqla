import 'package:get/get.dart';
import 'package:naqla/core/constant/app_route.dart';

abstract class CaptinOffers extends GetxController {
  acceptCaptinOffer();
  denyCaptinOffer(int index);
}

class CaptinOffersImp extends CaptinOffers {
  List offers = [1, 2, 3];
  @override
  acceptCaptinOffer() {
    Get.toNamed(AppRoutes.delivaryDone);
  }

  @override
  denyCaptinOffer(index) {
    offers.removeAt(index);
  }
}
