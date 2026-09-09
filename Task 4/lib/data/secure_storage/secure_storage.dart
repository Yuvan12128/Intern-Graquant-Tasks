import 'package:shared_preferences/shared_preferences.dart';

class SecureStorage {
  static final Map<String, String> _memoryStorage = {};

  Future writeSecureData(String key, String value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(key, value);
      _memoryStorage[key] = value;
      return value;
    } catch (err) {
      _memoryStorage[key] = value;
      return value;
    }
  }

  Future<String?> readSecureData(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getString(key) ?? _memoryStorage[key];
    } catch (err) {
      return _memoryStorage[key];
    }
  }

  Future deleteSecureData(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(key);
      _memoryStorage.remove(key);
    } catch (err) {
      _memoryStorage.remove(key);
    }
  }

  Future deleteAll() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      _memoryStorage.clear();
    } catch (err) {
      _memoryStorage.clear();
    }
  }
}
