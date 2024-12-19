import 'package:get/get.dart';
import 'package:naqla/view/screen/captin/home/captin_home_nav.dart';
import 'package:naqla/view/screen/choose_user_type_page.dart';
import 'package:naqla/core/constant/app_route.dart';
import 'package:naqla/view/screen/auth/login_page.dart';
import 'package:naqla/view/screen/auth/sign_up_page.dart';
import 'package:naqla/view/screen/auth/verification_page.dart';
import 'package:naqla/view/screen/captin/auth/captin_sign_up_page.dart';
import 'package:naqla/view/screen/home/bottom_nave.dart';
import 'package:naqla/view/screen/home/notification_page.dart';
import 'package:naqla/view/screen/home/profile_page_edit_data.dart';
import 'package:naqla/view/screen/localization/change_language.dart';
import 'package:naqla/view/screen/on_boarding_page.dart';
import 'package:naqla/view/screen/orders/delivary_done.dart';
import 'package:naqla/view/screen/orders/orders_delivary.dart';
import 'package:naqla/view/screen/orders/search_captin.dart';
import 'package:naqla/view/screen/orders/user_order.dart';

import 'core/middelwar/my_middleware.dart';
import 'view/screen/captin/home/orders/submit_offers.dart';
import 'view/screen/localization/localization.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: "/",
    page: () => const LocalizationPage(),
    middlewares: [
      MyMiddleware(),
    ],
  ),
  GetPage(
    name: AppRoutes.chooseUserType,
    page: () => const ChooseUserTypePage(),
  ),
  // onBoarding
  GetPage(
    name: AppRoutes.onBoarding,
    page: () => const OnBoardingPage(),
  ),
  //auth
  GetPage(
    name: AppRoutes.loginPage,
    page: () => const LoginPage(),
  ),
  GetPage(
    name: AppRoutes.signUpPage,
    page: () => const SignUpPage(),
  ),
  GetPage(
    name: AppRoutes.verificationPage,
    page: () => const VerificationPage(),
  ),
  GetPage(
    name: AppRoutes.notificationPage,
    page: () => const NotificationPage(),
  ),
  GetPage(
    name: AppRoutes.buttomNav,
    page: () => const BottomNave(),
  ),
  GetPage(
    name: AppRoutes.userPage,
    page: () => const UserOrder(),
  ),
  GetPage(
    name: AppRoutes.searchCaptin,
    page: () => const SearchCaptin(),
  ),
  GetPage(
    name: AppRoutes.ordersDelivary,
    page: () => const OrdersDelivary(),
  ),
  GetPage(
    name: AppRoutes.delivaryDone,
    page: () => const DelivaryDone(),
  ),
  GetPage(
    name: AppRoutes.editData,
    page: () => const ProfilePageEditData(),
  ),
  GetPage(
    name: AppRoutes.changeLanguage,
    page: () => const ChangeLanguage(),
  ),
// captin
  GetPage(
    name: AppRoutes.captinSignUp,
    page: () => const CaptinSignUpPage(),
  ),
  GetPage(
    name: AppRoutes.sumbitoffers,
    page: () => const SubmitOffers(),
  ),
  GetPage(
    name: AppRoutes.captinHomeNav,
    page: () => const CaptinHomeNav(),
  ),
];
