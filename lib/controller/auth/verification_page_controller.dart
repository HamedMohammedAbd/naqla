import 'package:get/get.dart';

abstract class VerificationPageController extends GetxController {
  isDoneFunction(String value);
}

class VerificationPageControllerImp extends VerificationPageController {
  bool isDone = false;
  String isDoneString = "";

  @override
  isDoneFunction(value) {
    // isDoneString += value;

    if (value.length == 4) {
      isDone = true;
    } else {
      
      isDoneString += value;
      isDone = false;
    }
    update();
  }
}
