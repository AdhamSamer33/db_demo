import 'package:hive_ce/hive.dart';
import 'local_data_storage.dart';

class LocalDataStorageImpl<T> implements LocalDataStorage<T> {
  final Box<T> _box;

  LocalDataStorageImpl(this._box);

  @override
  Future<void> add(String key, T value) async {
    await _box.put(key, value);
  }

  @override
  Future<T?> get(String key) async {
    return _box.get(key);
  }

  @override
  Future<List<T>> getAll() async {
    return _box.values.toList();
  }

  @override
  Future<void> update(String key, T value) async {
    await _box.put(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }
}
