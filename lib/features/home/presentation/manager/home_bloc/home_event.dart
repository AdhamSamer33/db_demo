part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.test() = _test;
  factory HomeEvent.fetchProducts() = _FetchProducts;
  factory HomeEvent.deleteProduct(ProductEntity product) = _DeleteProduct;
}
