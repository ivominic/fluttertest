import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String>
      startingProduct; //Prvi je uvijek string, to je key, ali value može biti razno. Ako nije jedan tip, onda se postavi "dynamic"

  ProductManager(
      {this.startingProduct}); //vitičaste zagrade označavaju opcioni parametar

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

//initState se pokreće prije builda, prilikom prvog poziva ProductManager-a i u trenutku poziva build metode već ima dodat starting product koji se predaje iz main.dart fajla
  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
      //print(_products);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
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
        Expanded(
            child: Products(_products,
                deleteProduct: _deleteProduct)), //ovo uzima preostali prostor
      ],
    );
  }
}
