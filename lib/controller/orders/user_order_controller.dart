import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:naqla/core/class/status_request.dart';

import '../../core/functions/choose_image.dart';

abstract class UserOrderController extends GetxController {
  carTypeUsing(int index);
  packagingOfPortablesFunction();
  workerIncludedFunction();
  addNumber();
  removeNumber();
  addNumberInstallationTechnician();
  removeNumberInstallationTechnician();
  myCurrentLocation();
  myCameraPostion(Position position);
  addMarkers(LatLng latLng);
  chooseImages();
}

class UserOrderControllerImp extends UserOrderController {
  late String appBar;
  int currentIndex = 0;
  bool packagingOfPortables = false;
  bool workerIncluded = false;
  int workerNumber = 0;
  int numberInstallationTechnician = 0;
  Position? myPostion;
  Completer<GoogleMapController>? firstContoller;
  Completer<GoogleMapController>? secondContoller;
  CameraPosition cameraPosition = const CameraPosition(
    target: LatLng(-3.759883, 42.124124124),
    zoom: 14.4746,
  );
  List<Marker> myMarker = [];
  double latitude = 0;
  double longitude = 0;
  late StatusRequest statusRequest;
  final List<String> carsType = [
    "FixedBox".tr,
    "tipperBox".tr,
    "Tanks".tr,
    "Coolers".tr,
  ];
  late TextEditingController textEditingController;
  List<XFile?>? images = [];
  @override
  void onInit() {
    appBar = Get.arguments["appBar"];
    textEditingController = TextEditingController();
    statusRequest = StatusRequest.loading;
    myCurrentLocation();
    firstContoller = Completer<GoogleMapController>();
    secondContoller = Completer<GoogleMapController>();
    super.onInit();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  carTypeUsing(index) {
    currentIndex = index;
    update();
  }

  @override
  packagingOfPortablesFunction() {
    packagingOfPortables = !packagingOfPortables;
    update();
  }

  @override
  workerIncludedFunction() {
    workerIncluded = !workerIncluded;
    update();
  }

  @override
  addNumber() {
    workerNumber++;

    update();
  }

  @override
  removeNumber() {
    if (workerNumber > 0) {
      workerNumber--;
    }

    update();
  }

  @override
  addNumberInstallationTechnician() {
    numberInstallationTechnician++;
    update();
  }

  @override
  removeNumberInstallationTechnician() {
    if (numberInstallationTechnician > 0) {
      numberInstallationTechnician--;
    }

    update();
  }

  @override
  myCurrentLocation() async {
    myPostion = await Geolocator.getCurrentPosition();
    myCameraPostion(myPostion!);
    statusRequest = StatusRequest.none;
    update();
  }

  @override
  myCameraPostion(Position position) async {
    cameraPosition = CameraPosition(
      target: LatLng(position.latitude, position.longitude),
      zoom: 12,
    );

    update();
  }

  @override
  addMarkers(LatLng latLng) {
    myMarker.add(Marker(markerId: const MarkerId("1"), position: latLng));
    latitude = latLng.latitude;
    longitude = latLng.longitude;
    update();
  }

  @override
  chooseImages() async {
    images = await pickeImages();
    update();
  }
}
