import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:monietracka/app/theme/colors.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.bgColor,
    this.textColor,
    this.label,
    this.child,
    this.onTap,
  });

  final Color? bgColor;
  final Color? textColor;
  final String? label;
  final Widget? child;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.primary,
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Center(
          child: AppText(
            label,
            color: textColor ?? AppColors.white,
            weight: FontWeight.w700,
            customTextSize: 18,
          ),
        ),
      ),
    );
  }
}
