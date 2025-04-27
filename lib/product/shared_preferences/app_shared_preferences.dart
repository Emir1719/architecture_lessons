import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences<T> {
  final String _key;
  final SharedPreferences _prefs;

  AppSharedPreferences(this._key, this._prefs);

  Future<void> set(T value) async {
    if (value is bool) {
      await _prefs.setBool(_key, value);
    } else if (value is int) {
      await _prefs.setInt(_key, value);
    } else if (value is double) {
      await _prefs.setDouble(_key, value);
    } else if (value is String) {
      await _prefs.setString(_key, value);
    } else if (value is List<String>) {
      await _prefs.setStringList(_key, value);
    } else {
      throw UnsupportedError("Unsupported type: ${value.runtimeType}");
    }
  }

  /// Tür uyumsuzsa null döner, hata vermez
  Future<T?> get() async {
    final value = _prefs.get(_key);

    if (value is T) {
      return value;
    } else {
      return null;
    }
  }

  Future<void> delete() async => await _prefs.remove(_key);

  Future<bool> exists() async => _prefs.containsKey(_key);

  Future<void> clear() async => await _prefs.clear();
}
