import 'package:get/get.dart';

import '../controller/global_controller.dart';
import '../core/class/curd.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Curd());
    Get.put(GlobalController());
  }
}
