import 'package:get/get.dart';

class CSPSplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CSPSplashScreenController(),
    );
  }
}

class CSPSplashScreenController extends GetxController {}
