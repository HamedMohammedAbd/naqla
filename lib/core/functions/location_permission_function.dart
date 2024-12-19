import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:naqla/view/widget/global/button_custom.dart';
import 'package:naqla/view/widget/global/text_custom.dart';

Future<Object> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();

  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Get.defaultDialog(
      content: const TextCustom(text: "you must enable the location services"),
      confirm: ButtonCustom(
        text: "Enable",
        onTap: () async {
          Geolocator.openLocationSettings();
          Get.back();
        },
      ),
    );
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Get.defaultDialog(
        content:
            const TextCustom(text: "you must enable the location services"),
        confirm: ButtonCustom(
          text: "Enable",
          onTap: () async {
            permission = LocationPermission.always;
            Get.back();
          },
        ),
      );
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Get.defaultDialog(
      content: const TextCustom(text: "you must enable the location services"),
      confirm: ButtonCustom(
        text: "Enable",
        onTap: () async {
          permission = LocationPermission.always;
          Get.back();
        },
      ),
    );
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
