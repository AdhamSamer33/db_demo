abstract class LocalDataStorage<T> {
  Future<void> init();

  Future<void> close();

  Future<void> clear();

  Future<void> delete(String key);

  Future<void> put(String key, T value);

  T? get(String key);

  Future<void> deleteAll(List<String> keys);

  List<T> getAllValues();
}
