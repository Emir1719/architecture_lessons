import 'package:architecture_lessons/feature/home/view/home_view.dart';
import 'package:architecture_lessons/product/init/app_init.dart';
import 'package:architecture_lessons/product/init/product_localization.dart';
import 'package:core/features/theme/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  await AppInit.init();
  runApp(ProductLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);*/
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final colorShceme =
        brightness == Brightness.light
            ? AppColorScheme.lightScheme
            : AppColorScheme.darkScheme;

    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme(colorScheme: colorShceme).theme,
      themeMode: ThemeMode.light,
      home: const HomeView(),
    );
  }
}
