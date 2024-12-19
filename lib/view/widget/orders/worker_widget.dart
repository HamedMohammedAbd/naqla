import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../global/text_custom.dart';

class WorkerWidget extends StatelessWidget {
  final int number;
  final String text;
  final void Function()? removeFunction;
  final void Function()? addFunction;
  const WorkerWidget({
    super.key,
    required this.number,
    required this.text,
    this.removeFunction,
    this.addFunction,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: TextCustom(text: text.tr),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: addFunction,
            child: Container(
              margin: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: Get.width / 21.3,
              height: Get.width / 21.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.gray2Color,
                ),
              ),
              child: Icon(
                Icons.add,
                size: Get.width / 31.84,
              ),
            ),
          ),
          TextCustom(text: "$number"),
          InkWell(
            onTap: removeFunction,
            child: Container(
              margin: const EdgeInsets.all(3),
              alignment: Alignment.center,
              width: Get.width / 21.3,
              height: Get.width / 21.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: AppColor.gray2Color,
                ),
              ),
              child: Icon(
                Icons.remove,
                size: Get.width / 31.84,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
