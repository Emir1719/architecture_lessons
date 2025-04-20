import 'dart:ui';

enum Locales {
  tr(const Locale('tr', 'TR')),
  en(const Locale('en', 'US'));

  final Locale locale;

  const Locales(this.locale);

  static final List<Locale> supportedLocales =
      values.map((e) => e.locale).toList();
}
