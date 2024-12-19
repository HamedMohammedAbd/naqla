import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "message".tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(Get.width / 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
              text: "Latestmessages".tr,
              fontSize: Get.width / 23.875,
            ),
            ...List.generate(
              3,
              (index) => Container(
                margin: EdgeInsets.only(bottom: Get.width / 70),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const TextCustom(text: "سيف و انيس"),
                  subtitle: const TextCustom(text: "سيف و انيس"),
                  leading: CircleAvatar(
                    radius: Get.width / 15.28,
                    backgroundImage: const AssetImage(AppImage.loginMan),
                  ),
                  trailing: const TextCustom(text: "10:30"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
