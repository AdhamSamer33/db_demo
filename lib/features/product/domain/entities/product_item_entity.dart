import 'package:hive_ce/hive.dart';

// part 'product_item_entity.g.dart';

// @HiveType(typeId: 0)
class ProductEntity extends HiveObject {
  // @HiveField(0)
  final int id;

  // @HiveField(1)
  final String name;

  // @HiveField(2)
  final String description;

  // @HiveField(3)
  final double price;

  // @HiveField(4)
  final String image;

  ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}
