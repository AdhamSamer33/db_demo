import 'package:hive_ce/hive.dart';

class ProductEntity extends HiveObject {
  final int id;

  final String name;

  final String description;

  final double price;

  final String image;

  ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}
