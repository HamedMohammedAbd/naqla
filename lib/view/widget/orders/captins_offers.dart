import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/controller/orders/captin_offers.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/view/widget/orders/accept_or_deny_captin.dart';
import 'package:naqla/view/widget/orders/captin_offer_details.dart';

import '../../../core/constant/app_image.dart';
import '../global/text_custom.dart';

class CaptinsOffers extends GetView<CaptinOffersImp> {
  final int index;
  const CaptinsOffers(this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 5,
      ),
      color: AppColor.delivaryColor,
      width: Get.width / 1.133,
      height: Get.height / 11.8,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: Get.width / 16.26,
              backgroundImage: const AssetImage(AppImage.halfCar),
            ),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    TextCustom(
                      text: "حامد عبد",
                      fontSize: Get.width / 23.875,
                    ),
                    const Spacer(),
                    AcceptOrDenyCaptin(
                      backGroundColor: AppColor.okColor,
                      iconColor: AppColor.gray2Color,
                      iconData: Icons.check,
                      onTap: () {
                        controller.acceptCaptinOffer();
                      },
                    ),
                    AcceptOrDenyCaptin(
                      backGroundColor: AppColor.cancelColor,
                      iconColor: Colors.red,
                      iconData: Icons.close,
                      onTap: () {
                        controller.denyCaptinOffer(index);
                      },
                    ),
                  ],
                ),
                const CaptinOfferDetails(
                  rating: 4.5,
                  price: 100,
                  time: '3',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
