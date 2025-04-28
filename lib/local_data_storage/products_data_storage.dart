import 'package:db_demo/app_constants.dart';
import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/local_data_storage/local_data_storage.dart';
import 'package:hive_ce/hive.dart';
import 'package:injectable/injectable.dart';

import 'local_data_storage_impl.dart';

@Injectable()
class ProductsDataStorage extends LocalDataStorageImpl<ProductEntity> {
  ProductsDataStorage()
    : super(Hive.box<ProductEntity>(AppConstants.productsBoxKey));
}
