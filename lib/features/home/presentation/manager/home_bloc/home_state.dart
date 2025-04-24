part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    bool? isLoading,
    @Default([]) List<ProductEntity> products,
  }) = _HomeState;

  const factory HomeState.loaded(List<ProductEntity> products) = HomeLoaded;

  const factory HomeState.error(String message) = HomeError;

  const factory HomeState.updated(ProductEntity product) = HomeUpdated;

  const factory HomeState.added(ProductEntity product) = HomeAdded;

  const factory HomeState.deleted(ProductEntity product) = HomeDeleted;
}
