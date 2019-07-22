import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product details'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //Vertikalno
          crossAxisAlignment: CrossAxisAlignment
              .center, //Horizontalno, ali unutar kolone, pa kolonu staviti u Center widget
          children: <Widget>[
            Image.asset('assets/images/image1.jpg'),
            Container(
              child: Text('Details'),
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
