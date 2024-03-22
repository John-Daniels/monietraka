import 'package:flutter/material.dart';
import 'package:monietracka/app/shared/widgets/spacing.dart';

import '../../../shared/widgets/app_text.dart';
import '../../../theme/colors.dart';

class HomeActionChips extends StatelessWidget {
  const HomeActionChips({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(width: 1, color: AppColors.grey),
      ),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: AppColors.black,
            size: 13,
          ),
          hSpace(3),
          AppText(
            label,
            customTextSize: 10,
            weight: FontWeight.w800,
          ),
        ],
      ),
    );
  }
}
