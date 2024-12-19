import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';

class StackImage extends StatelessWidget {
  final void Function()? onTap;
  final String? name;
  final XFile? image;
  const StackImage({
    super.key,
    this.onTap,
    this.name,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: Get.width / 6,
              backgroundColor: AppColor.primaryColor,
              child: CircleAvatar(
                radius: Get.width / 6.5,
                backgroundImage: image == null
                    ? const AssetImage(
                        AppImage.loginMan,
                      )
                    : FileImage(
                        File(
                          image!.path,
                        ),
                      ),
              ),
            ),
            PositionedDirectional(
              bottom: Get.width / 40,
              child: InkWell(
                onTap: onTap,
                child: Container(
                  height: Get.width / 15,
                  width: Get.width / 15,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.primaryColor,
                  ),
                  child: Container(
                    margin: EdgeInsets.all(
                      Get.width / 130,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColor.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.camera_alt_outlined,
                      color: AppColor.whiteColor,
                      size: Get.width / 35,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: Get.height / 50,
        ),
        name != null
            ? TextCustom(
                text: "$name",
                fontWeight: FontWeight.bold,
                fontSize: Get.width / 25,
              )
            : Container(),
      ],
    );
  }
}
