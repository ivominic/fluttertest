import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  ProductPage(this.title, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Vertikalno
          crossAxisAlignment: CrossAxisAlignment
              .center, //Horizontalno, ali unutar kolone, pa kolonu staviti u Center widget
          children: <Widget>[
            Image.asset(image),
            Container(
              child: Text(description),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text('Back'),
                onPressed: () {
                  return Navigator.pop(context);
                },
              ),
              padding: EdgeInsets.all(10),
            )
          ],
        )));
  }
}
