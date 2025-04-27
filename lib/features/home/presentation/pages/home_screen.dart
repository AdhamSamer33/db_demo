import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:db_demo/features/product/presentation/manager/product_bloc/product_bloc.dart';
import 'package:db_demo/utils/ObseerverUtils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:db_demo/features/home/presentation/manager/home_bloc/home_bloc.dart';
import 'package:db_demo/features/product/presentation/pages/product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin, RouteAware {
  @override
  void initState() {
    super.initState();
    homeBloc.add(HomeEvent.fetchProducts());
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ObserverUtils.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }
  @override
  void didPopNext() {
    homeBloc.add(HomeEvent.fetchProducts());
  }

  @override
  void dispose() {
    ObserverUtils.routeObserver.unsubscribe(this);
    super.dispose();
  }

  Future<void> _onRefresh() async {
    homeBloc.add(HomeEvent.fetchProducts());
  }

  @override
  bool get wantKeepAlive => true;

  final HomeBloc homeBloc = HomeBloc();
  final ProductBloc productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
      child: SafeArea(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
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
                  return _buildProductItem(products[index]);
                },
              );
            },
            listener: (BuildContext context, HomeState state) {},
          ),
        ),
      ),
    );
  }

  Widget _buildProductItem(ProductEntity product) {
    return BlocConsumer<ProductBloc, ProductState>(
      bloc: productBloc,
      builder: (context, state) {
        return CupertinoListTile(
          title: Text(product.name),
          subtitle: Text(product.description),
          additionalInfo: Text(product.price.toString()),
          trailing: Row(
            children: [
              GestureDetector(
                child: Icon(CupertinoIcons.pencil),
                onTap: () {
                  _showEditProduct(product.id);
                },
              ),
              SizedBox(width: 4),
              GestureDetector(
                child: Icon(CupertinoIcons.delete),
                onTap: () {
                  productBloc.add(ProductEvent.deleteProduct(product));
                  homeBloc.add(HomeEvent.fetchProducts());
                },
              ),
            ],
          ),
        );
      },
      listener: (BuildContext context, ProductState state) {},
    );
  }

  void _showEditProduct(int productId) {
    final nameController = TextEditingController();
    final descriptionController = TextEditingController();
    final priceController = TextEditingController();
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          title: Text('Edit Product', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),),
          message: Column(
            children: [
              CupertinoTextField(
                controller: nameController,
                placeholder: 'Name',
              ),
              SizedBox(height: 8),
              CupertinoTextField(
                controller: descriptionController,
                placeholder: 'Description',
                maxLines: null,
              ),
              SizedBox(height: 8),
              CupertinoTextField(
                controller: priceController,
                placeholder: 'Price',
                maxLines: null,
              ),
            ],
          ),
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                ProductEntity product = ProductEntity(
                  name: nameController.text,
                  description: descriptionController.text,
                  id: productId,
                  price: double.parse(priceController.text),
                  image: "",
                );
                productBloc.add(ProductEvent.updateProduct(product));
                homeBloc.add(HomeEvent.fetchProducts());
                Navigator.pop(context);
              },
              child: Text('Update'),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
        );
      },
    );
  }
}
