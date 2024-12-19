import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../global/text_custom.dart';

class ChooseLocationWidget extends StatelessWidget {
  final void Function()? onTap;
  final bool isLine;
  final String textOne, textTwo;
  final bool isIcon;
  const ChooseLocationWidget({
    super.key,
    this.onTap,
    this.isLine = true,
    required this.textOne,
    required this.textTwo,
    this.isIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: AppColor.dotColor,
                radius: Get.width / 50.1,
              ),
              isLine
                  ? Container(
                      width: 1,
                      height: Get.height / 13.7,
                      color: AppColor.dotColor,
                    )
                  : Container(),
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextCustom(
                text: textOne.tr,
                fontSize: Get.width / 31.84,
              ),
              ListTile(
                onTap: onTap,
                title: Text(
                  textTwo.tr,
                  style: TextStyle(
                    color: AppColor.gray2Color,
                    fontSize: Get.width / 31.84,
                  ),
                ),
                trailing: Icon(
                    isIcon ? Icons.location_on : Icons.calendar_month_outlined),
              )
            ],
          ),
        ),
      ],
    );
  }
}
