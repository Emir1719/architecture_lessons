import 'package:architecture_lessons/product/util/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final class ProductLocalization extends EasyLocalization {
  ProductLocalization({required super.child})
    : super(
        supportedLocales: Locales.supportedLocales,
        fallbackLocale: Locales.en.locale,
        path: "assets/translations",
      );

  static Future<void> changeLocale(
    BuildContext context,
    Locales language,
  ) async => await context.setLocale(language.locale);
}
