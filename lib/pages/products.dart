import 'package:flutter/material.dart';

import '../product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            //Bolje ListView za više stavki, ali ovdje Column
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading:
                    false, //Ovo na false i neće postaviti mani na Choose stranici
                title: Text('Choose'),
              ),
              ListTile(
                title: Text('All products'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Test app'),
        ),
        body: ProductManager());
    //body: ProductManager(startingProduct: 'Početni')), //Ako se unese, onda prikazuje prvi item na startu, inače ne. Mora se unijeti naziv opcionog parametra;
  }
}
