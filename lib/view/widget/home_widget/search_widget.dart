import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/home/main_home_controller.dart';

import '../../../core/constant/app_color.dart';

class SearchWidget extends GetView<MainHomeControllerImp> {
  final void Function() onTap;
  const SearchWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Get.put(MainHomeControllerImp);
    return Container(
      margin: EdgeInsets.only(
        top: Get.height / 97,
      ),
      height: Get.height / 16.12,
      child: TextFormField(
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Get.width / 50,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[700],
                  size: Get.width / 20,
                ),
                SizedBox(
                  width: Get.width / 50,
                ),
                InkWell(
                  onTap: onTap,
                  child: SizedBox(
                    width: Get.width / 7.5,
                    height: Get.width / 7.5,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: Icon(
                            Icons.notifications_outlined,
                            color: AppColor.primaryColor,
                            size: Get.width / 19.2,
                          ),
                        ),
                        PositionedDirectional(
                          top: 8,
                          start: 8,
                          child: Container(
                            alignment: Alignment.center,
                            width: Get.width / 25.5,
                            height: Get.width / 25.5,
                            decoration: const BoxDecoration(
                              color: AppColor.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const FittedBox(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  color: AppColor.backgrounColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          hintText: "SearchYourOrder".tr,
          hintStyle: TextStyle(
            color: AppColor.grayColor,
            fontSize: Get.width / 27.3,
          ),
        ),
      ),
    );
  }
}
