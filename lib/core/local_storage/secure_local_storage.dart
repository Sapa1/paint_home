abstract class SecureLocalStorage {
  Future<void> saveData({required String key, required String value});

  Future<String?> getData({required String key});

  Future<void> deleteData(String key);

  Future<void> clearData();
}
