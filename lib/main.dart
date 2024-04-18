import 'package:flutter/material.dart';
import 'resource/csp_styles.dart';
import 'router/app_route.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CaseSync Pro',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      getPages: pages,
      initialRoute: ROUTE_SPLASH_SCREEN,
    );
  }
}
