import 'dart:math';

import 'package:db_demo/features/product/domain/entities/product_item_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:db_demo/features/product/presentation/manager/product_bloc/product_bloc.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final ProductBloc _productBloc = ProductBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductBloc, ProductState>(
      bloc: _productBloc,
      builder: (context, state) {
        final nameController = TextEditingController();
        final descriptionController = TextEditingController();
        final priceController = TextEditingController();

        return CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text('Add Product'),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CupertinoTextField(
                    controller: nameController,
                    placeholder: 'Name',
                  ),
                  CupertinoTextField(
                    controller: descriptionController,
                    placeholder: 'Description',
                    maxLines: null,
                  ),
                  CupertinoTextField(
                    controller: priceController,
                    placeholder: 'Price',
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton(
                      onPressed: () {
                        _productBloc.add(
                          ProductEvent.addProduct(
                            ProductEntity(
                              id: Random().nextInt(100),
                              name: nameController.text,
                              description: descriptionController.text,
                              price: double.parse(priceController.text),
                              image: "",
                            ),
                          ),
                        );
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
