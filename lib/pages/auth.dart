import 'package:flutter/material.dart';

import './products.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Login page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('LOGIN'),
            onPressed: () => {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => ProductsPage(),
                ),
              ),
            },
          ),
        ));
  }
}
