import 'package:shared_preferences/shared_preferences.dart';

enum PrefKey {
  example,
  isFifteenNotification,
  isThirtyNotification,
  isSixtyNotification
}

class PreferencesDataSource {
  PreferencesDataSource();

  Future<void> setInt(String key, int value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

  Future<int?> getInt(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt(key);
  }

  Future<void> setBool(String key, bool value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setBool(key, value);
  }

  Future<bool?> getBool(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(key);
  }
}
