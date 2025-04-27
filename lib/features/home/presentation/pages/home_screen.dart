import 'package:db_demo/features/home/presentation/manager/home_bloc/home_bloc.dart';
import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/features/product/presentation/pages/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  final HomeBloc homeBloc = HomeBloc();

  HomeScreen({super.key}) {
    homeBloc.add(HomeEvent.fetchProducts());
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: CupertinoButton(
          padding: EdgeInsets.zero,
          child: Icon(CupertinoIcons.add),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) => ProductScreen()),
            );
          },
        ),
      ),
      child: BlocConsumer<HomeBloc, HomeState>(
        bloc: homeBloc,
        builder: (context, state) {
          List<ProductEntity> products = [];
          if (state is HomeLoaded) {
            products = state.products;
          }
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Text(products[index].name);
            },
          );
        },
        listener: (BuildContext context, HomeState state) {},
      ),
    );
  }
}
