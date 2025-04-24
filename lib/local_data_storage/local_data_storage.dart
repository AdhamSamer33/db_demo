import 'dart:io';

// import 'package:db_demo/local_data_storage/hive_adapters/hive_registrar.g.dart';
import 'package:db_demo/hive/hive_registrar.g.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

class LocalDataStorage {
  static Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    await Hive.openBox('myBox');
  }

  static Future<void> close() async {
    await Hive.close();
  }

  static Future<void> clear() async {
    await Hive.box('myBox').clear();
  }

  static Future<void> delete(String key) async {
    await Hive.box('myBox').delete(key);
  }

  static Future<void> put(String key, dynamic value) async {
    await Hive.box('myBox').put(key, value);
  }

  static dynamic get(String key) {
    return Hive.box('myBox').get(key);
  }

  static Future<void> deleteAll(List<String> keys) async {
    await Hive.box('myBox').deleteAll(keys);
  }

  static List<dynamic> getAllValues() {
    return Hive.box('myBox').values.toList();
  }
}
