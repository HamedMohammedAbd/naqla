import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constant/app_color.dart';

class ChooseImageWidget extends StatelessWidget {
  final void Function()? onTap;
  const ChooseImageWidget({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(
        Get.width / 30,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: Get.width / 6.262,
          width: Get.width / 6.262,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: AppColor.primaryColor,
            ),
          ),
          child: CircleAvatar(
            radius: Get.width / 36.38,
            backgroundColor: AppColor.circle2Color,
            child: Icon(
              Icons.image,
              size: Get.width / 32.7335,
              color: AppColor.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
