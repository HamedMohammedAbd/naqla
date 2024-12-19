import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/view/widget/global/button_custom.dart';

import '../../../../widget/captin/orders_widget.dart/add_offers_widget.dart';
import '../../../../widget/captin/orders_widget.dart/area_widget.dart';
import '../../../../widget/captin/orders_widget.dart/image_title_request_order.dart';
import '../../../../widget/captin/orders_widget.dart/orders_images.dart';
import '../../../../widget/global/text_custom.dart';

class SubmitOffers extends StatelessWidget {
  const SubmitOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextCustom(text: "SubmitOffers".tr),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(Get.width / 20),
          child: Column(
            children: [
              Container(
                height: Get.height / 1.4,
                width: Get.width,
                margin: EdgeInsets.symmetric(
                  vertical: Get.height / 70,
                ),
                child: Card(
                  child: Container(
                    padding: EdgeInsets.all(
                      Get.width / 31.84,
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                const ImageTitleRequestOrder(
                                  title: 'نقل سريع',
                                  image: AppImage.loginMan,
                                  descrebtion:
                                      " نقل طقم كنب و طاولة سفرة و عدة أشياء خفيفة .",
                                ),
                                SizedBox(
                                  height: Get.height / 70,
                                ),
                                const OrdersImages(),
                                SizedBox(
                                  height: Get.height / 70,
                                ),
                                const AreaWidget(),
                                const AddOffersWidget(),
                              ],
                            ),
                          ),
                        ),
                        ButtonCustom(
                          text: "send".tr,
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
