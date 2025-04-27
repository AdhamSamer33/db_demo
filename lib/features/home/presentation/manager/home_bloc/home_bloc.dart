import 'package:db_demo/app_constants.dart';
import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/local_data_storage/local_data_storage.dart';
import 'package:db_demo/local_data_storage/products_data_storage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<_FetchProducts>(_onFetched);
  }

  Future<void> _onFetched(_FetchProducts event, Emitter<HomeState> emit) async {
    final data = ProductsDataStorage().getAllValues();
    // if (data.isNotEmpty) {
    final products = data.map((e) => e).toList();
    print("Products: $products");
    emit(HomeLoaded(products ?? []));
    // }
  }
}
