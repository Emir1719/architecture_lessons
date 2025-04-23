import 'package:core/features/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final ColorScheme _colorScheme;
  final TextTheme _textTheme;

  AppTheme({required ColorScheme colorScheme, TextTheme? textTheme})
    : _colorScheme = colorScheme,
      _textTheme = textTheme ?? AppTextTheme.medium;

  ThemeData get theme => ThemeData(
    useMaterial3: true,
    brightness: _colorScheme.brightness,
    colorScheme: _colorScheme,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: _textTheme.headlineMedium?.copyWith(
        color: _colorScheme.onSurface,
      ),
    ),
    textTheme: _textTheme.apply(
      bodyColor: _colorScheme.onSurface,
      displayColor: _colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: _colorScheme.surface,
    canvasColor: _colorScheme.surface,
  );
}
