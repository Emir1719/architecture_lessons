import 'package:architecture_lessons/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_lessons/product/init/language/locale_keys.g.dart';
import 'package:architecture_lessons/product/init/product_localization.dart';
import 'package:architecture_lessons/product/util/enum/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

part 'widget/home_view_appbar.dart';

/// Ana Sayfa
class HomeView extends StatefulWidget {
  /// Ana Sayfa
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _HomeViewAppbar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await ProductLocalization.changeLocale(context, Locales.tr);
          },
          child: Text("Dil Değiştir"),
        ),
      ),
    );
  }
}
