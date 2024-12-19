import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class MaterialButtonNav extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;
  final String text;
  final bool? color;
  const MaterialButtonNav({
    super.key,
    this.onPressed,
    required this.iconData,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width * 0.2,
      child: MaterialButton(
        onPressed: onPressed,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              iconData,
              color: color! ? AppColor.primaryColor : AppColor.textColor,
            ),
            FittedBox(
              child: Text(
                text,
                style: TextStyle(
                  color: color! ? AppColor.primaryColor : AppColor.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
