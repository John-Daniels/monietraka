import 'package:flutter/material.dart';

import '../../../shared/widgets/app_text.dart';
import '../../../shared/widgets/spacing.dart';
import '../../../theme/colors.dart';

class HomeMenuButton extends StatelessWidget {
  const HomeMenuButton({super.key, required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          vSpace(10),
          AppText(
            label,
            customTextSize: 9,
            color: AppColors.darkGrey,
          ),
        ],
      ),
    );
  }
}
