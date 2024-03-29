import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('details'),
                onPressed: () => {
                  Navigator.push<bool>(
                    //push će vratiti bool value
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return ProductPage(
                          products[index]['title'],
                          products[index]['image'],
                          products[index]['description']);
                    }),
                  ).then((bool value) {
                    if (value) {
                      deleteProduct(index);
                    }
                  })
                },
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget productCard = Center(
      child: Text('Nema zapisa, potrebno je unijeti neki'),
    );
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }
}
