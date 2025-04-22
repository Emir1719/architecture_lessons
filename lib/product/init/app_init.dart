import 'dart:async';
import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

mixin AppInit {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(_init, (error, stack) => log(error.toString()));
  }

  static Future<void> _init() async {
    await EasyLocalization.ensureInitialized();
    await DeviceUtility.instance.initPackageInfo(); // kartal
    EasyLocalization.logger.enableLevels = [LevelMessages.error];

    FlutterError.onError = (FlutterErrorDetails details) {
      log(details.exceptionAsString(), level: LevelMessages.error.index);
    };
  }
}
