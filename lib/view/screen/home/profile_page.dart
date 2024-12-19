import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/home/profile_page_controller.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/auth_widget/stack_image.dart';

class ProfilePage extends GetView<ProfilePageControllerImp> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfilePageControllerImp());
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(Get.width / 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            StackImage(
              onTap: () {},
              name: "حامد عبد",
            ),
            ...List.generate(
              controller.addData().length,
              (index) {
                return ListTile(
                  onTap: () {
                    controller.goToPage(index);
                  },
                  contentPadding: EdgeInsets.zero,
                  title: Text(controller.addData()[index]["title"]),
                  leading: CircleAvatar(
                    backgroundColor: AppColor.primaryColor,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        controller.addData()[index]["image"],
                        color: AppColor.whiteColor,
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
