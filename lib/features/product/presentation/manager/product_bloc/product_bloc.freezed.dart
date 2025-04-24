// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() test,
    required TResult Function(ProductEntity product) addProduct,
    required TResult Function(ProductEntity product) updateProduct,
    required TResult Function(ProductEntity product) deleteProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? test,
    TResult? Function(ProductEntity product)? addProduct,
    TResult? Function(ProductEntity product)? updateProduct,
    TResult? Function(ProductEntity product)? deleteProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? test,
    TResult Function(ProductEntity product)? addProduct,
    TResult Function(ProductEntity product)? updateProduct,
    TResult Function(ProductEntity product)? deleteProduct,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_test value) test,
    required TResult Function(_addProduct value) addProduct,
    required TResult Function(_updateProduct value) updateProduct,
    required TResult Function(_deleteProduct value) deleteProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_test value)? test,
    TResult? Function(_addProduct value)? addProduct,
    TResult? Function(_updateProduct value)? updateProduct,
    TResult? Function(_deleteProduct value)? deleteProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_test value)? test,
    TResult Function(_addProduct value)? addProduct,
    TResult Function(_updateProduct value)? updateProduct,
    TResult Function(_deleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
    ProductEvent value,
    $Res Function(ProductEvent) then,
  ) = _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$testImplCopyWith<$Res> {
  factory _$$testImplCopyWith(
    _$testImpl value,
    $Res Function(_$testImpl) then,
  ) = __$$testImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$testImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$testImpl>
    implements _$$testImplCopyWith<$Res> {
  __$$testImplCopyWithImpl(_$testImpl _value, $Res Function(_$testImpl) _then)
    : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$testImpl implements _test {
  _$testImpl();

  @override
  String toString() {
    return 'ProductEvent.test()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$testImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() test,
    required TResult Function(ProductEntity product) addProduct,
    required TResult Function(ProductEntity product) updateProduct,
    required TResult Function(ProductEntity product) deleteProduct,
  }) {
    return test();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? test,
    TResult? Function(ProductEntity product)? addProduct,
    TResult? Function(ProductEntity product)? updateProduct,
    TResult? Function(ProductEntity product)? deleteProduct,
  }) {
    return test?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? test,
    TResult Function(ProductEntity product)? addProduct,
    TResult Function(ProductEntity product)? updateProduct,
    TResult Function(ProductEntity product)? deleteProduct,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_test value) test,
    required TResult Function(_addProduct value) addProduct,
    required TResult Function(_updateProduct value) updateProduct,
    required TResult Function(_deleteProduct value) deleteProduct,
  }) {
    return test(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_test value)? test,
    TResult? Function(_addProduct value)? addProduct,
    TResult? Function(_updateProduct value)? updateProduct,
    TResult? Function(_deleteProduct value)? deleteProduct,
  }) {
    return test?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_test value)? test,
    TResult Function(_addProduct value)? addProduct,
    TResult Function(_updateProduct value)? updateProduct,
    TResult Function(_deleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (test != null) {
      return test(this);
    }
    return orElse();
  }
}

abstract class _test implements ProductEvent {
  factory _test() = _$testImpl;
}

/// @nodoc
abstract class _$$addProductImplCopyWith<$Res> {
  factory _$$addProductImplCopyWith(
    _$addProductImpl value,
    $Res Function(_$addProductImpl) then,
  ) = __$$addProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$addProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$addProductImpl>
    implements _$$addProductImplCopyWith<$Res> {
  __$$addProductImplCopyWithImpl(
    _$addProductImpl _value,
    $Res Function(_$addProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$addProductImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as ProductEntity,
      ),
    );
  }
}

/// @nodoc

class _$addProductImpl implements _addProduct {
  _$addProductImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.addProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$addProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$addProductImplCopyWith<_$addProductImpl> get copyWith =>
      __$$addProductImplCopyWithImpl<_$addProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() test,
    required TResult Function(ProductEntity product) addProduct,
    required TResult Function(ProductEntity product) updateProduct,
    required TResult Function(ProductEntity product) deleteProduct,
  }) {
    return addProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? test,
    TResult? Function(ProductEntity product)? addProduct,
    TResult? Function(ProductEntity product)? updateProduct,
    TResult? Function(ProductEntity product)? deleteProduct,
  }) {
    return addProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? test,
    TResult Function(ProductEntity product)? addProduct,
    TResult Function(ProductEntity product)? updateProduct,
    TResult Function(ProductEntity product)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_test value) test,
    required TResult Function(_addProduct value) addProduct,
    required TResult Function(_updateProduct value) updateProduct,
    required TResult Function(_deleteProduct value) deleteProduct,
  }) {
    return addProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_test value)? test,
    TResult? Function(_addProduct value)? addProduct,
    TResult? Function(_updateProduct value)? updateProduct,
    TResult? Function(_deleteProduct value)? deleteProduct,
  }) {
    return addProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_test value)? test,
    TResult Function(_addProduct value)? addProduct,
    TResult Function(_updateProduct value)? updateProduct,
    TResult Function(_deleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (addProduct != null) {
      return addProduct(this);
    }
    return orElse();
  }
}

abstract class _addProduct implements ProductEvent {
  factory _addProduct(final ProductEntity product) = _$addProductImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$addProductImplCopyWith<_$addProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$updateProductImplCopyWith<$Res> {
  factory _$$updateProductImplCopyWith(
    _$updateProductImpl value,
    $Res Function(_$updateProductImpl) then,
  ) = __$$updateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$updateProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$updateProductImpl>
    implements _$$updateProductImplCopyWith<$Res> {
  __$$updateProductImplCopyWithImpl(
    _$updateProductImpl _value,
    $Res Function(_$updateProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$updateProductImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as ProductEntity,
      ),
    );
  }
}

/// @nodoc

class _$updateProductImpl implements _updateProduct {
  _$updateProductImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.updateProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$updateProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$updateProductImplCopyWith<_$updateProductImpl> get copyWith =>
      __$$updateProductImplCopyWithImpl<_$updateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() test,
    required TResult Function(ProductEntity product) addProduct,
    required TResult Function(ProductEntity product) updateProduct,
    required TResult Function(ProductEntity product) deleteProduct,
  }) {
    return updateProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? test,
    TResult? Function(ProductEntity product)? addProduct,
    TResult? Function(ProductEntity product)? updateProduct,
    TResult? Function(ProductEntity product)? deleteProduct,
  }) {
    return updateProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? test,
    TResult Function(ProductEntity product)? addProduct,
    TResult Function(ProductEntity product)? updateProduct,
    TResult Function(ProductEntity product)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_test value) test,
    required TResult Function(_addProduct value) addProduct,
    required TResult Function(_updateProduct value) updateProduct,
    required TResult Function(_deleteProduct value) deleteProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_test value)? test,
    TResult? Function(_addProduct value)? addProduct,
    TResult? Function(_updateProduct value)? updateProduct,
    TResult? Function(_deleteProduct value)? deleteProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_test value)? test,
    TResult Function(_addProduct value)? addProduct,
    TResult Function(_updateProduct value)? updateProduct,
    TResult Function(_deleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _updateProduct implements ProductEvent {
  factory _updateProduct(final ProductEntity product) = _$updateProductImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$updateProductImplCopyWith<_$updateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$deleteProductImplCopyWith<$Res> {
  factory _$$deleteProductImplCopyWith(
    _$deleteProductImpl value,
    $Res Function(_$deleteProductImpl) then,
  ) = __$$deleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductEntity product});
}

/// @nodoc
class __$$deleteProductImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$deleteProductImpl>
    implements _$$deleteProductImplCopyWith<$Res> {
  __$$deleteProductImplCopyWithImpl(
    _$deleteProductImpl _value,
    $Res Function(_$deleteProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$deleteProductImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as ProductEntity,
      ),
    );
  }
}

/// @nodoc

class _$deleteProductImpl implements _deleteProduct {
  _$deleteProductImpl(this.product);

  @override
  final ProductEntity product;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$deleteProductImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$deleteProductImplCopyWith<_$deleteProductImpl> get copyWith =>
      __$$deleteProductImplCopyWithImpl<_$deleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() test,
    required TResult Function(ProductEntity product) addProduct,
    required TResult Function(ProductEntity product) updateProduct,
    required TResult Function(ProductEntity product) deleteProduct,
  }) {
    return deleteProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? test,
    TResult? Function(ProductEntity product)? addProduct,
    TResult? Function(ProductEntity product)? updateProduct,
    TResult? Function(ProductEntity product)? deleteProduct,
  }) {
    return deleteProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? test,
    TResult Function(ProductEntity product)? addProduct,
    TResult Function(ProductEntity product)? updateProduct,
    TResult Function(ProductEntity product)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_test value) test,
    required TResult Function(_addProduct value) addProduct,
    required TResult Function(_updateProduct value) updateProduct,
    required TResult Function(_deleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_test value)? test,
    TResult? Function(_addProduct value)? addProduct,
    TResult? Function(_updateProduct value)? updateProduct,
    TResult? Function(_deleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_test value)? test,
    TResult Function(_addProduct value)? addProduct,
    TResult Function(_updateProduct value)? updateProduct,
    TResult Function(_deleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _deleteProduct implements ProductEvent {
  factory _deleteProduct(final ProductEntity product) = _$deleteProductImpl;

  ProductEntity get product;

  /// Create a copy of ProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$deleteProductImplCopyWith<_$deleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  bool? get isLoading => throw _privateConstructorUsedError;
  ProductEntity? get product => throw _privateConstructorUsedError;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
    ProductState value,
    $Res Function(ProductState) then,
  ) = _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call({bool? isLoading, ProductEntity? product});
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = freezed, Object? product = freezed}) {
    return _then(
      _value.copyWith(
            isLoading:
                freezed == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool?,
            product:
                freezed == product
                    ? _value.product
                    : product // ignore: cast_nullable_to_non_nullable
                        as ProductEntity?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
    _$ProductStateImpl value,
    $Res Function(_$ProductStateImpl) then,
  ) = __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLoading, ProductEntity? product});
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
    _$ProductStateImpl _value,
    $Res Function(_$ProductStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isLoading = freezed, Object? product = freezed}) {
    return _then(
      _$ProductStateImpl(
        isLoading:
            freezed == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool?,
        product:
            freezed == product
                ? _value.product
                : product // ignore: cast_nullable_to_non_nullable
                    as ProductEntity?,
      ),
    );
  }
}

/// @nodoc

class _$ProductStateImpl implements _ProductState {
  _$ProductStateImpl({this.isLoading, this.product});

  @override
  final bool? isLoading;
  @override
  final ProductEntity? product;

  @override
  String toString() {
    return 'ProductState(isLoading: $isLoading, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, product);

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);
}

abstract class _ProductState implements ProductState {
  factory _ProductState({final bool? isLoading, final ProductEntity? product}) =
      _$ProductStateImpl;

  @override
  bool? get isLoading;
  @override
  ProductEntity? get product;

  /// Create a copy of ProductState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
