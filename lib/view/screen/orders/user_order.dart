import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:naqla/controller/orders/user_order_controller.dart';
import 'package:naqla/core/class/status_request.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/core/constant/app_image.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/view/widget/orders/check_box_widget.dart';
import 'package:naqla/view/widget/orders/choose_location_widget.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';
import 'package:naqla/view/widget/orders/car_type_widget.dart';

import '../../widget/orders/choose_images_widget.dart';
import '../../widget/orders/text_field_order_widget.dart';
import '../../widget/orders/worker_widget.dart';

class UserOrder extends GetView<UserOrderControllerImp> {
  const UserOrder({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(UserOrderControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.appBar),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: Get.width / 8.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CarTypeWidget(),
            Container(
              margin: EdgeInsets.all(
                Get.width / 16,
              ),
              child: Image.asset(
                AppImage.halfCar,
                width: Get.width / 5.9,
                height: Get.height / 17.125,
              ),
            ),
            TextFieldOrderWidget(
              textEditingController: controller.textEditingController,
              hint: "hintOrder",
            ),
            TextCustom(
              text: "addImage".tr,
              fontSize: Get.width / 31,
            ),
            GetBuilder<UserOrderControllerImp>(
              builder: (controller) {
                return Wrap(
                  children: [
                    ...List.generate(
                      controller.images!.length,
                      (index) {
                        return Container(
                          margin: EdgeInsets.all(
                            Get.width / 40,
                          ),
                          child: controller.images!.isNotEmpty
                              ? Image.file(
                                  width: Get.width / 3.2,
                                  height: Get.height / 10.4,
                                  fit: BoxFit.fill,
                                  File(
                                    controller.images![index]!.path,
                                  ),
                                )
                              : Container(),
                        );
                      },
                    ),
                    ChooseImagesWidget(
                      onTap: () {
                        controller.chooseImages();
                      },
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            GetBuilder<UserOrderControllerImp>(
              builder: (controller) {
                return controller.currentIndex == 0
                    ? CheckBoxWidget(
                        color: AppColor.primaryColor,
                        text: 'Packingofgoods',
                        isTrue: controller.packagingOfPortables,
                        onChanged: (bool? value) {
                          controller.packagingOfPortablesFunction();
                        },
                      )
                    : Container();
              },
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ChooseLocationWidget(
                  textOne: 'firstLocation',
                  textTwo: 'address',
                  onTap: () {
                    Get.defaultDialog(
                      title: "firstLocation".tr,
                      actions: [
                        ButtonCustom(
                          width: Get.width / 3,
                          text: "done".tr,
                          onTap: () {
                            Get.back();
                          },
                        ),
                        ButtonCustom(
                          width: Get.width / 3,
                          text: "back".tr,
                          onTap: () {
                            controller.latitude = 0.0;
                            controller.longitude = 0.0;
                            Get.back();
                          },
                        ),
                      ],
                      content: GetBuilder<UserOrderControllerImp>(
                        builder: (controllerTwo) {
                          return controllerTwo.statusRequest ==
                                  StatusRequest.loading
                              ? SizedBox(
                                  height: Get.height / 1.8,
                                  width: Get.width / 1.2,
                                  child: const CircularProgressIndicator(
                                    color: AppColor.primaryColor,
                                  ),
                                )
                              : Container(
                                  height: Get.height / 1.8,
                                  width: Get.width / 1.2,
                                  color: AppColor.dotColor,
                                  child: GoogleMap(
                                    mapType: MapType.hybrid,
                                    initialCameraPosition:
                                        controllerTwo.cameraPosition,
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      if (!controllerTwo
                                          .firstContoller!.isCompleted) {
                                        controllerTwo.firstContoller!
                                            .complete(controller);
                                      }
                                    },
                                    markers: controllerTwo.myMarker.toSet(),
                                    onTap: (LatLng latLng) {
                                      controllerTwo.addMarkers(latLng);
                                    },
                                  ),
                                );
                        },
                      ),
                    );
                  },
                ),
                ChooseLocationWidget(
                  textOne: 'DownloadArea',
                  textTwo: 'address',
                  onTap: () {
                    Get.defaultDialog(
                      title: "firstLocation".tr,
                      actions: [
                        ButtonCustom(
                          width: Get.width / 3,
                          text: "done".tr,
                          onTap: () {
                            Get.back();
                          },
                        ),
                        ButtonCustom(
                          width: Get.width / 3,
                          text: "back".tr,
                          onTap: () {
                            controller.latitude = 0.0;
                            controller.longitude = 0.0;
                            Get.back();
                          },
                        ),
                      ],
                      content: GetBuilder<UserOrderControllerImp>(
                        builder: (controllerTwo) {
                          return controllerTwo.statusRequest ==
                                  StatusRequest.loading
                              ? SizedBox(
                                  height: Get.height / 1.8,
                                  width: Get.width / 1.2,
                                  child: const CircularProgressIndicator(
                                    color: AppColor.primaryColor,
                                  ),
                                )
                              : Container(
                                  height: Get.height / 1.8,
                                  width: Get.width / 1.2,
                                  color: AppColor.dotColor,
                                  child: GoogleMap(
                                    mapType: MapType.hybrid,
                                    initialCameraPosition:
                                        controllerTwo.cameraPosition,
                                    onMapCreated:
                                        (GoogleMapController controller) {
                                      if (!controllerTwo
                                          .secondContoller!.isCompleted) {
                                        controllerTwo.secondContoller!
                                            .complete(controller);
                                      }
                                    },
                                    markers: controllerTwo.myMarker.toSet(),
                                    onTap: (LatLng latLng) {
                                      controllerTwo.addMarkers(latLng);
                                    },
                                  ),
                                );
                        },
                      ),
                    );
                  },
                ),
                ChooseLocationWidget(
                  textOne: 'Settheday',
                  textTwo: 'address',
                  onTap: () {},
                  isLine: false,
                  isIcon: false,
                ),
              ],
            ),
            GetBuilder<UserOrderControllerImp>(
              builder: (controller) => WorkerWidget(
                number: controller.workerNumber,
                text: 'Worker',
                addFunction: () => controller.addNumber(),
                removeFunction: () => controller.removeNumber(),
              ),
            ),
            GetBuilder<UserOrderControllerImp>(
              builder: (controller) => controller.currentIndex == 0
                  ? WorkerWidget(
                      number: controller.numberInstallationTechnician,
                      text: 'Installationtechnician',
                      addFunction: () =>
                          controller.addNumberInstallationTechnician(),
                      removeFunction: () =>
                          controller.removeNumberInstallationTechnician(),
                    )
                  : Container(),
            ),
            GetBuilder<UserOrderControllerImp>(
              builder: (controller) {
                return CheckBoxWidget(
                  color: AppColor.textColor,
                  text: 'WorkerIncluded',
                  isTrue: controller.workerIncluded,
                  onChanged: (bool? value) {
                    controller.workerIncludedFunction();
                  },
                );
              },
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: Get.height / 40,
              ),
              child: ButtonCustom(
                text: "confirem".tr,
                onTap: () {
                  Get.toNamed(AppRoutes.searchCaptin);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
