import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function
      addProduct; //Postaje funkcija _addProduct koja se šalje iz product_maneger fajla kroz konstruktor
  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).secondaryHeaderColor,
      onPressed: () {
        addProduct({
          'title': 'Neki naslov',
          'image': 'assets/images/image1.jpg',
          'description': 'Neki opis',
        });
      },
      child: Text('Add'),
    );
  }
}
