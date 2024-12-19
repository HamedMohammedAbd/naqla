import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/captin/auth/sign_up_controller.dart';

import '../../../../core/constant/app_color.dart';

class DropMenuWidget extends GetView<AdminSignUpPageControllerImp> {
  final List<DropdownMenuEntry<dynamic>> menuList;
  final String? hint;
  const DropMenuWidget({
    super.key,
    required this.menuList,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: Get.width,
      hintText: hint,
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: AppColor.grayColor,
          fontSize: Get.width / 38,
        ),
        fillColor: AppColor.backgrounColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      menuStyle: const MenuStyle(
        alignment: Alignment.center,
        backgroundColor: WidgetStatePropertyAll(
          AppColor.backgrounColor,
        ),
      ),
      menuHeight: Get.height / 4,
      dropdownMenuEntries: menuList,
      onSelected: (value) {
        controller.updateCarValue(value.toString());
      },
    );
  }
}
