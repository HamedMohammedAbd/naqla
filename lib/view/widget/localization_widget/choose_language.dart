import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../localization/change_local_controller.dart';
import '../global/text_custom.dart';

class ChooseLanguage extends StatelessWidget {
  final String value, text;
  final String? groupValue;
  final void Function(String? invalidType)? onChanged;
  final void Function()? onTap;
  const ChooseLanguage({
    super.key,
    required this.value,
    this.onChanged,
    required this.groupValue,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChangeLocaleController>(
      builder: (controller) {
        return InkWell(
          onTap: onTap,
          child: Container(
            height: Get.height / 15,
            width: Get.width,
            padding: EdgeInsets.all(
              Get.width / 30,
            ),
            decoration: BoxDecoration(
              color: AppColor.backgrounColor,
              borderRadius: BorderRadius.circular(10),
              border: value == groupValue
                  ? Border.all(
                      color: AppColor.grayColor,
                      width: 1,
                    )
                  : null,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextCustom(
                  text: text.tr,
                  textAlign: TextAlign.start,
                ),
                Radio(
                  activeColor: AppColor.primaryColor,
                  focusColor: AppColor.primaryColor,
                  fillColor:
                      const WidgetStatePropertyAll(AppColor.primaryColor),
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
