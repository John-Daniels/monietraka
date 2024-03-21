import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monietracka/app/shared/widgets/app_app_bar.dart';
import 'package:monietracka/app/shared/widgets/app_button.dart';
import 'package:monietracka/app/shared/widgets/app_text.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';
import 'package:monietracka/app/theme/colors.dart';

import '../../../shared/widgets/app_input.dart';
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
                const AppInput(
                  label: 'Email',
                  hint: "Enter your email address",
                ),
                vSpace(20),
                const AppInput(
                  label: 'Password',
                  hint: "Enter your password",
                  isPassword: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                vSpace(50),
                AppButton(
                  label: 'Log In',
                  onTap: () {},
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
