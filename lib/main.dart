import 'package:architecture_lessons/feature/home/view/home_view.dart';
import 'package:architecture_lessons/product/init/app_init.dart';
import 'package:architecture_lessons/product/init/product_localization.dart';
import 'package:architecture_lessons/product/init/theme/theme.dart';
import 'package:architecture_lessons/product/init/theme/util.dart';
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
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: const HomeView(),
    );
  }
}
