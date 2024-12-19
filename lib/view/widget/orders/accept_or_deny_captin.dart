import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AcceptOrDenyCaptin extends StatelessWidget {
  final IconData iconData;
  final Color backGroundColor;
  final Color iconColor;
  final void Function()? onTap;
  const AcceptOrDenyCaptin({
    super.key,
    required this.iconData,
    required this.backGroundColor,
    required this.iconColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(
          Get.width / 90,
        ),
        height: Get.width / 15.28,
        width: Get.width / 15.28,
        decoration: BoxDecoration(
          color: backGroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          iconData,
          color: iconColor,
        ),
      ),
    );
  }
}
