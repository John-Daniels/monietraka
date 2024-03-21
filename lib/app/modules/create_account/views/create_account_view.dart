import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:monietracka/app/routes/app_pages.dart';
import 'package:monietracka/app/shared/widgets/app_text.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';
import 'package:monietracka/app/utils/form_validator.dart';

import '../../../constants/images.dart';
import '../../../shared/widgets/app_app_bar.dart';
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_input.dart';
import '../controllers/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  const CreateAccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        title: Center(
          child: Image.asset(
            AppImages.logo,
            width: 150,
          ),
        ),
      ),
      body: Padding(
          padding: simpad(20, 20),
          child: Form(
            child: Column(
              children: [
                const AppInput(
                  label: 'Username',
                  hint: "Enter your username",
                ),
                vSpace(20),
                AppInput(
                  label: 'Phone Number',
                  hint: "Enter your phone number",
                  keyboardType: TextInputType.phone,
                  validator: (phone) {
                    return FormValidator.isValidPhoneNumber(phone);
                  },
                ),
                vSpace(20),
                AppInput(
                  label: 'Email',
                  hint: "Enter your email address",
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    return FormValidator.isValidEmail(email);
                  },
                ),
                vSpace(20),
                AppInput(
                  label: 'Enter Password',
                  hint: "Enter your password",
                  isPassword: true,
                  suffixIcon: Icon(Icons.visibility),
                  validator: (pwd) {
                    return FormValidator.isValidPassword(pwd);
                  },
                ),
                vSpace(20),
                const AppInput(
                  label: 'Confirm Password',
                  hint: "Re-enter your password",
                  isPassword: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                vSpace(50),
                AppButton(
                  label: 'Create Account',
                  onTap: () {},
                ),
                vSpace(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.LOGIN);
                      },
                      child: AppText(
                        'Log In',
                        weight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
