import 'package:shared_preferences/shared_preferences.dart';

import 'local_storage.dart';

class LocalStorageImpl implements LocalStorage {
  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();
  @override
  Future<bool> clear() async {
    final sp = await _instance;
    return sp.clear();
  }

  @override
  Future<bool> contains(String key) async {
    final sp = await _instance;
    return sp.containsKey(key);
  }

  @override
  Future<T?> read<T>(String key) async {
    final sp = await _instance;

    if (T == String) {
      return sp.getString(key) as T?;
    } else if (T == int) {
      return sp.getInt(key) as T?;
    } else if (T == bool) {
      return sp.getBool(key) as T?;
    } else if (T == double) {
      return sp.getDouble(key) as T?;
    } else if (T == List) {
      return sp.getStringList(key) as T?;
    } else {
      throw Exception('Type not supported');
    }
  }

  @override
  Future<bool> remove(String key) async {
    final sp = await _instance;
    return sp.remove(key);
  }

  @override
  Future<bool> write<T>({required String key, required T value}) async {
    final sp = await _instance;

    if (T == String) {
      return sp.setString(key, value as String);
    } else if (T == int) {
      return sp.setInt(key, value as int);
    } else if (T == bool) {
      return sp.setBool(key, value as bool);
    } else if (T == double) {
      return sp.setDouble(key, value as double);
    } else if (T == List) {
      return sp.setStringList(key, value as List<String>);
    } else {
      throw Exception('Type not supported');
    }
  }
}
