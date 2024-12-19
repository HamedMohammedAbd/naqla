import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naqla/core/constant/app_color.dart';
import 'package:naqla/services/services.dart';

import 'binding/my_binding.dart';
import 'localization/change_local_controller.dart';
import 'localization/translation.dart';
import 'route.dart';
// import 'route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ChangeLocaleController changeLocaleController =
        Get.put(ChangeLocaleController());
    return GetMaterialApp(
      locale: changeLocaleController.language,
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      title: 'Naqla',
      color: AppColor.primaryColor,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryIconTheme: const IconThemeData(
          color: AppColor.primaryColor,
        ),
        fontFamily: "Tajawal",
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColor.textColor,
          ),
        ),
        primaryColor: AppColor.primaryColor,
        focusColor: AppColor.primaryColor,
        iconTheme: const IconThemeData(
          color: AppColor.primaryColor,
        ),
      ),
      initialBinding: MyBinding(),
      getPages: routes,
      // home: const SubmitOffers(),
    );
  }
}
