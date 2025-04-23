import 'package:flutter/material.dart';

class AppTextTheme {
  static TextTheme get medium {
    return const TextTheme(
      // body
      bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
      bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),

      // headline
      headlineLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),
      headlineMedium: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
      headlineSmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),

      // display
      displayLarge: TextStyle(fontSize: 34, fontWeight: FontWeight.w300),
      displayMedium: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
      displaySmall: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
    );
  }
}
