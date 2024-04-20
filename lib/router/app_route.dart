// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import '../screens/authe_screen/csp_login_screen.dart';
import '../screens/splash_screen/csp_splash_screen.dart';
import '../screens/splash_screen/csp_splash_screen_controller.dart';

// DEFINE APP ROUTE
const String ROUTE_SPLASH_SCREEN = '/ROUTE_SPLASH_SCREEN';
const String ROUTE_LOGIN_SCREEN = '/ROUTE_LOGIN_SCREEN';

// GET PAGE WITH ROUTE
final pages = [
  GetPage(
    name: ROUTE_SPLASH_SCREEN,
    page: () => const CSPSplashScreen(),
    bindings: [CSPSplashScreenBindings()],
    transition: Transition.fade,
  ),
  GetPage(
    name: ROUTE_LOGIN_SCREEN,
    page: () => CSPLoginScreen(),
    transition: Transition.fade,
  ),
];
