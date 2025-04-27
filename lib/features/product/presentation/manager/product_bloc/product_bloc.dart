import 'package:db_demo/local_data_storage/local_data_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/product_item_entity.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@Injectable()
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductState()) {
    on<_test>((event, emit) => emit(state.copyWith(isLoading: true)));
    on<_addProduct>(_add);
    on<_updateProduct>(_onUpdateProduct);
    on<_deleteProduct>(_onDelete);
  }

  Future<void> _add(_addProduct event, Emitter<ProductState> emit) async {
    await LocalDataStorage.put(event.product.id.toString(), event.product);
    emit(state.copyWith(product: event.product));
  }

  Future<void> _onDelete(
    _deleteProduct event,
    Emitter<ProductState> emit,
  ) async {
    await LocalDataStorage.delete(event.product.id.toString());
  }

  Future<void> _onUpdateProduct(
    _updateProduct event,
    Emitter<ProductState> emit,
  ) async {
    await LocalDataStorage.put(event.product.id.toString(), event.product);
  }
}
