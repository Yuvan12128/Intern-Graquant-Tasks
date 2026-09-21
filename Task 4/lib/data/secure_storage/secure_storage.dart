import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static final _storage = FlutterSecureStorage();
  Future writeSecureData(String key, String value) async {
    try {
      var writeData = await _storage.write(key: key, value: value);
      return writeData;
    } catch (err) {
      throw err;
    }
  }

  Future readSecureData(String key) async {
    try {
      var readData = await _storage.read(key: key);
      return readData;
    } catch (err) {
      throw err;
    }
  }

  Future deleteSecureData(String key) async {
    try {
      var deleteData = await _storage.delete(key: key);
      return deleteData;
    } catch (err) {
      throw err;
    }
  }

  Future deleteAll() async {
    try {
      await _storage.deleteAll();
    } catch (err) {
      throw err;
    }
  }
}
