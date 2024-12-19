import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naqla/core/functions/choose_image.dart';
import 'package:naqla/view/screen/captin/auth/page_one.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_route.dart';
import '../../../view/screen/captin/auth/page_three.dart';
import '../../../view/screen/captin/auth/page_two.dart';
import '../../../view/widget/global/text_custom.dart';

abstract class AdminSignUpPageController extends GetxController {
  updateCarValue(String value);
  goToNextPage();
  choosePayType(String value);
  chooseUserImage();
  chooseIdImage();
  chooseCarImage();
  chooseConfirmImageImage();
  choosePermissionImage();
}

class AdminSignUpPageControllerImp extends AdminSignUpPageController {
  int currentIndex = 0;
  String carValue = "";
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneNumberController;
  late PageController pageController;
  String payType = "";
  XFile? userProfileImage, userId, confirmImage, permission;
  List<XFile?>? carImage = [];
  List<String> payTypeList = [
    "Percentage",
    "fixed",
  ];
  List pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  List<String> currentPage = [
    "Deliveryinformation".tr,
    "Contactnumber".tr,
    "Requiredimages".tr,
  ];
  List<DropdownMenuEntry> menuList = [
    DropdownMenuEntry(value: "FixedBox", label: "FixedBox".tr),
    DropdownMenuEntry(value: "tipperBox", label: "tipperBox".tr),
    DropdownMenuEntry(value: "Tanks", label: "Tanks".tr),
    DropdownMenuEntry(value: "Coolers", label: "Coolers".tr),
  ];
  List<DropdownMenuEntry> citiesList = [
    DropdownMenuEntry(value: "FixedBox", label: "FixedBox".tr),
    DropdownMenuEntry(value: "tipperBox", label: "tipperBox".tr),
    DropdownMenuEntry(value: "Tanks", label: "Tanks".tr),
    DropdownMenuEntry(value: "Coolers", label: "Coolers".tr),
  ];
  @override
  void onInit() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    pageController = PageController();
    super.onInit();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    phoneNumberController.dispose();
    pageController.dispose();
    super.dispose();
  }

  @override
  updateCarValue(value) {
    carValue = value;
    update();
  }

  @override
  goToNextPage() {
    if (currentIndex == 2) {
      Get.offAllNamed(AppRoutes.captinHomeNav);
    } else {
      currentIndex++;
    }
    update();
  }

  changePage(int index) {
    currentIndex = index;
    update();
  }

  @override
  choosePayType(value) {
    payType = value;
    update();
  }

  @override
  chooseUserImage() async {
    Get.bottomSheet(
      backgroundColor: AppColor.backgrounColor,
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextCustom(text: "imageSource".tr),
            ListTile(
              onTap: () async {
                userProfileImage = await pickeImage(
                  source: ImageSource.camera,
                );
                Get.back();
              },
              title: Text("camera".tr),
              trailing: const Icon(
                Icons.camera_alt,
              ),
            ),
            ListTile(
              onTap: () async {
                userProfileImage = await pickeImage(
                  source: ImageSource.gallery,
                );
                update();

                Get.back();
              },
              title: Text("gallary".tr),
              trailing: const Icon(
                Icons.image,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  chooseIdImage() async {
    Get.bottomSheet(
      backgroundColor: AppColor.backgrounColor,
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             TextCustom(text: "imageSource".tr),
            ListTile(
              onTap: () async {
                userId = await pickeImage(
                  source: ImageSource.camera,
                );
                Get.back();
              },
              title:  Text("camera".tr),
              trailing: const Icon(
                Icons.camera_alt,
              ),
            ),
            ListTile(
              onTap: () async {
                userId = await pickeImage(
                  source: ImageSource.gallery,
                );
                update();

                Get.back();
              },
              title:  Text("gallary".tr),
              trailing: const Icon(
                Icons.image,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  chooseCarImage() async {
    carImage = await pickeImages();
    update();
  }

  @override
  chooseConfirmImageImage() async {
    Get.bottomSheet(
      backgroundColor: AppColor.backgrounColor,
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             TextCustom(text: "imageSource".tr),
            ListTile(
              onTap: () async {
                confirmImage = await pickeImage(
                  source: ImageSource.camera,
                );
                Get.back();
              },
              title:  Text("camera".tr),
              trailing: const Icon(
                Icons.camera_alt,
              ),
            ),
            ListTile(
              onTap: () async {
                confirmImage = await pickeImage(
                  source: ImageSource.gallery,
                );
                update();

                Get.back();
              },
              title: Text("gallary".tr),
              trailing: const Icon(
                Icons.image,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  choosePermissionImage() async {
    Get.bottomSheet(
      backgroundColor: AppColor.backgrounColor,
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextCustom(text: "imageSource".tr),
            ListTile(
              onTap: () async {
                permission = await pickeImage(
                  source: ImageSource.camera,
                );
                Get.back();
              },
              title:  Text("camera".tr),
              trailing: const Icon(
                Icons.camera_alt,
              ),
            ),
            ListTile(
              onTap: () async {
                permission = await pickeImage(
                  source: ImageSource.gallery,
                );
                update();

                Get.back();
              },
              title: Text("gallary".tr),
              trailing: const Icon(
                Icons.image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
