import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/constant/app_color.dart';
import '../../core/functions/choose_image.dart';
import '../../view/widget/global/text_custom.dart';

abstract class ProfilePageEditDataController extends GetxController {
  isLocationFunction();
  onChange(String value);
  deleteMyAccount();
  editImage();
}

class ProfilePageEditDataControllerImp extends ProfilePageEditDataController {
  late TextEditingController nameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneNumberController;
  late TextEditingController addressController;
  bool isLocation = false;
  XFile? image;
  List<String> cities = [
    "hamed",
    "Mohammed",
    "saif",
    "mansour",
    "aneas",
    "ahmad",
    "hamoudi",
  ];

  List<String> getSuggestion(String query) {
    List<String> cities2 = [];
    cities2.addAll(cities);
    cities2.retainWhere(
      (element) => element.toLowerCase().contains(
            query.toLowerCase(),
          ),
    );

    return cities2;
  }

  @override
  void onInit() {
    nameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    addressController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    addressController.dispose();
    phoneNumberController.dispose();
    lastNameController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  isLocationFunction() {
    isLocation = !isLocation;
    update();
  }

  @override
  onChange(value) {
    addressController.text = value;

    if (value.isEmpty) {
      isLocation = false;
    } else {
      isLocation = true;
    }

    update();
  }

  @override
  deleteMyAccount() {}

  @override
  editImage() {
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
                image = await pickeImage(
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
                image = await pickeImage(
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
