import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFAA713),
        ),
        useMaterial3: true,
      );
}
