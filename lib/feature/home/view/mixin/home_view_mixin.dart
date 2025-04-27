import 'dart:developer';

import 'package:architecture_lessons/feature/home/view/home_view.dart';
import 'package:architecture_lessons/product/init/locator.dart';
import 'package:architecture_lessons/product/shared_preferences/app_shared_preferences.dart';
import 'package:architecture_lessons/product/shared_preferences/preference_key.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();

    final darkModePref = getIt<AppSharedPreferences<String>>(
      param1: PreferenceKey.authToken,
    );

    log(darkModePref.get().toString());
  }
}
