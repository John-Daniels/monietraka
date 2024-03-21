import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monietracka/app/modules/splash_screen/bindings/splash_screen_binding.dart';
import 'package:monietracka/app/routes/app_pages.dart';
import 'package:monietracka/app/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monie Tracka',
      theme: AppTheme.theme,
      initialRoute: AppPages.INITIAL,
      initialBinding: SplashScreenBinding(),
      getPages: AppPages.routes,
    );
  }
}
