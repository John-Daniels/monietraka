import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Future.delayed(
      const Duration(seconds: 2),
      () => Get.offNamed(Routes.CREATE_ACCOUNT),
    );
    super.onReady();
  }
}
