import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

//initState se pokreće prije builda, prilikom prvog poziva ProductManager-a i u trenutku poziva build metode već ima dodat starting product koji se predaje iz main.dart fajla
  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('another test product');
                //print(_products);
              });
            },
            child: Text('Add'),
          ),
        ),
        Products(_products)
      ],
    );
  }
}
