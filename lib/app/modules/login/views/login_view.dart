import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monietracka/app/shared/widgets/app_app_bar.dart';
import 'package:monietracka/app/shared/widgets/app_button.dart';
import 'package:monietracka/app/shared/widgets/app_text.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';
import 'package:monietracka/app/theme/colors.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/widgets/app_input.dart';
import '../../../utils/form_validator.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: AppText(
          'Log In',
          weight: FontWeight.bold,
          customTextSize: 25,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: simpad(100, 20),
          child: Form(
            child: Column(
              children: [
                AppInput(
                  label: 'Email',
                  hint: "Enter your email address",
                  validator: (email) {
                    return FormValidator.isValidEmail(email);
                  },
                ),
                vSpace(20),
                Obx(() => AppInput(
                    label: 'Password',
                    hint: "Enter your password",
                    isPassword: !controller.isPwdVisible.value,
                    validator: (password) {
                      return FormValidator.isValidPassword(password);
                    },
                    suffixIcon: IconButton(
                      icon: Icon(
                        !controller.isPwdVisible.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        controller.isPwdVisible.toggle();
                      },
                    ))),
                vSpace(50),
                AppButton(
                  label: 'Log In',
                  onTap: () {
                    Get.offAllNamed(Routes.HOME);
                  },
                ),
                vSpace(30),
                AppText(
                  'Forgot Password?',
                  color: AppColors.black,
                  weight: FontWeight.w800,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
