import 'package:flutter/material.dart';

import './product.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct='Sweets Tester'}) {
    print('[ProductManger Widegt] constructor');
  }
  @override
  State<StatefulWidget> createState() {
        print('[ProductManager] createState()');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  @override
  void initState() {
        print('[ProductManager] initState()');

    _products.add(widget.startingProduct);
    super.initState();
  }
  @override
    void didUpdateWidget(ProductManager oldWidget) {
        print('[ProductManager] didUpdateWidget()');
      super.didUpdateWidget(oldWidget);
    }

  @override
  Widget build(BuildContext context) {
    print('[ProductManager] Build');
    return Column(
      children: [
        Container(
          child: RaisedButton(
            color: Theme.of(context).primaryColor,
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
