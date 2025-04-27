import 'package:db_demo/local_data_storage/products_data_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product_item_entity.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@Injectable()
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductsDataStorage _localDataStorage = ProductsDataStorage();
  ProductBloc() : super(ProductState()) {
    on<_test>((event, emit) => emit(state.copyWith(isLoading: true)));
    on<_addProduct>(_add);
    on<_updateProduct>(
      (event, emit) => emit(state.copyWith(product: event.product)),
    );
    on<_deleteProduct>(
      (event, emit) => emit(state.copyWith(product: event.product)),
    );
  }

  Future<void> _add(_addProduct event, Emitter<ProductState> emit) async {
    await _localDataStorage.put(event.product.id.toString(), event.product);
    emit(state.copyWith(product: event.product));
  }
}
