import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateAccountController extends GetxController {
  

  final count = 0.obs;
  RxBool isPwdVisible = false.obs;
  RxBool isPwdConfirmVisible = false.obs;
  TextEditingController pwdController = TextEditingController();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
