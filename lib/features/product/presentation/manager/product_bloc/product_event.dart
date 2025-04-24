part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  factory ProductEvent.test() = _test;
  factory ProductEvent.addProduct(ProductEntity product) = _addProduct;
  factory ProductEvent.updateProduct(ProductEntity product) = _updateProduct;
  factory ProductEvent.deleteProduct(ProductEntity product) = _deleteProduct;
}
