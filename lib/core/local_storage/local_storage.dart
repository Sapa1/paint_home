abstract class LocalStorage {
  Future<bool> clear();
  Future<bool> contains(String key);
  Future<T?> read<T>(String key);
  Future<bool> remove(String key);
  Future<bool> write<T>({required String key, required T value});
}
