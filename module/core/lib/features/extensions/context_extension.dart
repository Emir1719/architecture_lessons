import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  /// Returns the [ThemeData] of the current context.
  ThemeData get theme => Theme.of(this);

  /// Returns the [TextTheme] of the current context.
  TextTheme get textTheme => theme.textTheme;

  /// Returns the [ColorScheme] of the current context.
  ColorScheme get colorScheme => theme.colorScheme;

  /// Returns the [Brightness] of the current context.
  Brightness get brightness => theme.brightness;
}
