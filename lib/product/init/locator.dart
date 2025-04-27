// lib/di/service_locator.dart

import 'package:architecture_lessons/product/shared_preferences/app_shared_preferences.dart';
import 'package:architecture_lessons/product/shared_preferences/preference_key.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupLocator() async {
  // 1. SharedPreferences örneğini tekil (singleton) olarak kaydet
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);

  // 2. AppSharedPreferences<T> için fabrika kayıtları
  // Her tür ve key için factoryParam kullanıyoruz.
  getIt.registerFactoryParam<AppSharedPreferences<bool>, PreferenceKey, void>(
    (key, _) =>
        AppSharedPreferences<bool>(key.value, getIt<SharedPreferences>()),
  );
  getIt.registerFactoryParam<AppSharedPreferences<int>, PreferenceKey, void>(
    (key, _) =>
        AppSharedPreferences<int>(key.value, getIt<SharedPreferences>()),
  );
  getIt.registerFactoryParam<AppSharedPreferences<double>, PreferenceKey, void>(
    (key, _) =>
        AppSharedPreferences<double>(key.value, getIt<SharedPreferences>()),
  );
  getIt.registerFactoryParam<AppSharedPreferences<String>, PreferenceKey, void>(
    (key, _) =>
        AppSharedPreferences<String>(key.value, getIt<SharedPreferences>()),
  );
  getIt.registerFactoryParam<
    AppSharedPreferences<List<String>>,
    PreferenceKey,
    void
  >(
    (key, _) => AppSharedPreferences<List<String>>(
      key.value,
      getIt<SharedPreferences>(),
    ),
  );
}
