import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'secure_local_storage.dart';

class SecureLocalStorageImpl implements SecureLocalStorage {
  final FlutterSecureStorage storage;

  const SecureLocalStorageImpl(this.storage);

  @override
  Future<void> saveData({required String key, required String value}) async {
    if (await storage.containsKey(key: key)) {
      await storage.write(key: key, value: value);
      print(
        'Key: $key has been updated on secure local storage',
      );
    } else {
      await storage.write(key: key, value: value);
      print(
        'Key: $key has been saved on secure local storage',
      );
    }
  }

  @override
  Future<String?> getData({required String key}) async {
    if (await storage.containsKey(key: key)) {
      print('Key: $key was found in secure local storage');
      final response = await storage.read(key: key);
      return response;
    } else {
      print('Key: $key not found on secure local storage');
      return '';
    }
  }

  @override
  Future<void> deleteData(String key) async {
    if (await storage.containsKey(key: key)) {
      print('Key: $key has been deleted on secure local storage');
      await storage.delete(key: key);
    } else {
      print('Key: $key not found on secure local storage');
    }
  }

  @override
  Future<void> clearData() async {
    await storage.deleteAll();
    print('Secure local storage has been cleared successfully');
  }
}
