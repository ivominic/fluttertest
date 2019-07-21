import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(
      {this.startingProduct}); //vitičaste zagrade označavaju opcioni parametar

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
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
      //print(_products);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          child: ProductControl(_addProduct),
        ),
        //Container(height: 400, child: Products(_products)),//ako postavi listu ispod kontrole (dugme u ovom slučaju), mora ići u kontejner
        Expanded(child: Products(_products)), //ovo uzima preostali prostor
      ],
    );
  }
}
