import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monietracka/app/shared/widgets/app_text.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';

import '../../theme/colors.dart';

class AppInput extends StatelessWidget {
  const AppInput({
    super.key,
    this.label,
    this.hint,
    this.isPassword,
    this.controller,
    this.keyboardType,
    this.isReadOnly,
    this.onChanged,
    this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.action,
  });

  final String? label;
  final String? hint;
  final bool? isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? isReadOnly;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final TextInputAction? action;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          label,
          customTextSize: 17,
          weight: FontWeight.w700,
        ),
        vSpace(5),
        TextFormField(
          style: GoogleFonts.manrope(
            fontSize: 15,
            color: AppColors.black,
            fontWeight: FontWeight.w500,
          ),
          readOnly: isReadOnly ?? false,
          keyboardType: keyboardType,
          onChanged: onChanged,
          validator: validator,
          controller: controller,
          textInputAction: action,
          obscureText: isPassword ?? false,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            suffixIcon: isReadOnly == true
                ? const Icon(
                    IconlyBold.lock,
                  )
                : suffixIcon,
            prefixIcon: prefixIcon,
            contentPadding: simpad(16, 18),
            isDense: true,
            fillColor: AppColors.grey,
            focusColor: AppColors.grey,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1.5,
                color: AppColors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1.5,
                color: AppColors.grey,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1.5,
                color: Colors.red,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                width: 1.5,
                color: AppColors.grey,
              ),
            ),
            hintText: hint,
          ),
        ),
      ],
    );
  }
}
