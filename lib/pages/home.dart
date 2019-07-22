import 'package:flutter/material.dart';

import '../product_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test app'),
        ),
        body: ProductManager());
    //body: ProductManager(startingProduct: 'Početni')), //Ako se unese, onda prikazuje prvi item na startu, inače ne. Mora se unijeti naziv opcionog parametra;
  }
}
