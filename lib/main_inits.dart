import 'package:db_demo/app_constants.dart';
import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/hive/hive_registrar.g.dart';
import 'package:db_demo/local_data_storage/products_data_storage.dart';
import 'package:hive_ce_flutter/adapters.dart';

final class MainInits {
  static Future<void> init() async {
    await _initHive();
  }

  static Future<void> _initHive() async {
    await Hive.initFlutter();
    Hive.registerAdapters();
    await Hive.openBox<ProductEntity>(AppConstants.productsBoxKey);
  }
}
