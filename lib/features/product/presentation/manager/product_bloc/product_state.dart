part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState({bool? isLoading, ProductEntity? product}) =
      _ProductState;
  factory ProductState.initial() => ProductState(isLoading: false);
  factory ProductState.productAdded(ProductEntity product) =>
      ProductState(isLoading: false, product: product);
  factory ProductState.productDeleted() => ProductState(isLoading: false);
}
