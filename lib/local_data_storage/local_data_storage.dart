import 'package:hive_ce/hive.dart';

abstract class LocalDataStorage<T> {
  Future<void> add(String key, T value);
  Future<T?> get(String key);
  Future<List<T>> getAll();
  Future<void> update(String key, T value);
  Future<void> delete(String key);
  Future<void> clear();
}
