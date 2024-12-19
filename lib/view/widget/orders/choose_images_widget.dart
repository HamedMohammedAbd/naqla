import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class ChooseImagesWidget extends StatelessWidget {
  final void Function()? onTap;
  const ChooseImagesWidget({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: Get.height / 102.75,
        ),
        alignment: Alignment.center,
        width: Get.width / 7.21,
        height: Get.height / 18.27,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.imageBackColor,
          ),
        ),
        child: const Icon(
          Icons.photo_library_outlined,
        ),
      ),
    );
  }
}
