import 'package:db_demo/hive/hive_registrar.g.dart';
import 'package:db_demo/local_data_storage/products_data_storage.dart';
import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';

import 'local_data_storage/local_data_storage.dart';

final class MainInits {
  static Future<void> init() async {
    await _initHive();
  }

  static Future<void> _initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    await ProductsDataStorage().init();
  }
}
