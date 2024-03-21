import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../theme/colors.dart';

enum TextSize {
  small,
  medium,
  large,
}

class AppText extends StatelessWidget {
  AppText(
    this.text, {
    super.key,
    this.child,
    this.size,
    this.color,
    this.customTextSize,
    this.shadow,
    this.weight,
    this.align,
    this.decoration,
    this.decorationColor,
    this.maxLines,
    this.overflow,
  });
  final String? text;
  final Widget? child;
  final TextSize? size;
  final double? customTextSize;
  final Color? color;
  final List<Shadow>? shadow;
  FontWeight? weight;
  final TextDecoration? decoration;
  final Color? decorationColor;
  final TextAlign? align;
  final int? maxLines;
  final TextOverflow? overflow;
  double get fontSize {
    if (customTextSize != null) {
      return customTextSize!;
    }
    switch (size) {
      case TextSize.small:
        return 12;
      case TextSize.medium:
        weight = FontWeight.w500;
        return 16;
      case TextSize.large:
        return 20;
      default:
        return 16;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (child != null) {
      return child!;
    }
    return Text(
      text ?? '',
      style: GoogleFonts.manrope(
        fontSize: fontSize,
        color: color ?? AppColors.black,
        shadows: shadow,
        fontWeight: weight,
        decoration: decoration,
        decorationColor: decorationColor,
      ),
      overflow: overflow,
      maxLines: maxLines,
      textAlign: align,
    );
  }
}
