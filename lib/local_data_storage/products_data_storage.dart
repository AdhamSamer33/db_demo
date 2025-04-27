import 'package:db_demo/app_constants.dart';
import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/local_data_storage/local_data_storage.dart';
import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class ProductsDataStorage implements LocalDataStorage<ProductEntity> {
  late Box<ProductEntity> box = Hive.box<ProductEntity>(
    AppConstants.productsBoxKey,
  );

  @override
  Future<void> clear() async {
    await box.clear();
  }

  @override
  Future<void> close() async {
    await box.close();
  }

  @override
  Future<void> delete(String key) async {
    await box.delete(key);
  }

  @override
  Future<void> deleteAll(List<String> keys) async {
    await box.deleteAll(keys);
  }

  @override
  ProductEntity? get(String key) {
    return box.get(key);
  }

  @override
  List<ProductEntity> getAllValues() {
    return box.values.toList();
  }

  @override
  Future<void> init() async {
    box = await Hive.openBox<ProductEntity>(AppConstants.productsBoxKey);
  }

  @override
  Future<void> put(String key, ProductEntity value) async {
    await box.put(key, value);
  }
}
