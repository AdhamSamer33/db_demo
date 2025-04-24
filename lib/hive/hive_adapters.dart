import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:hive_ce/hive.dart';

part 'hive_adapters.g.dart';

@GenerateAdapters([AdapterSpec<ProductEntity>()])
// Annotations must be on some element
// ignore: unused_element
void _() {}
