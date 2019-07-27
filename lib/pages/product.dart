import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  ProductPage(this.title, this.image, this.description);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () {
          print(' Back button pressed');
          Navigator.pop(context, false);
          //Ako zakomentarišem Navigator red, Future value false ne dozvoljava back dugme, a true dozvoljava
          return Future.value(false);
        },
        child: Scaffold(
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
                    child: Text('DELETE'),
                    onPressed: () {
                      return Navigator.pop(
                          context, true); //true je parametar koji se šalje
                    },
                  ),
                  padding: EdgeInsets.all(10),
                )
              ],
            ))));
  }
}
