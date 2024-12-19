import 'package:get/get.dart';
import 'package:naqla/services/services.dart';

abstract class DelivaryDoneController extends GetxController {
  showInvoice();
}

class DelivaryDoneControllerImp extends DelivaryDoneController {
  MyServices myServices = Get.find();
  late bool language;
  bool showInvoiceDetails = false;
  @override
  void onInit() {
    language = myServices.sharedPreferences.get("language") == "ar";
    super.onInit();
  }

  @override
  showInvoice() {
    showInvoiceDetails = true;
    update();
  }
}
