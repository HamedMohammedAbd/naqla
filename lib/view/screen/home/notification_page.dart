import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(
          text: "notification".tr,
        ),
      ),
      body: ListView(
        children: [
          ...List.generate(
            2,
            (index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: Get.width / 15.28,
                  backgroundColor: AppColor.primaryColor.withOpacity(0.3),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
                title: TextCustom(
                  text: "طلبك رقم 543353 يتم نقله الان من مكة للرياض ",
                  fontSize: Get.width / 27.3,
                ),
                subtitle: const TextCustom(
                  text: "الان",
                  textColor: AppColor.grayColor,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
