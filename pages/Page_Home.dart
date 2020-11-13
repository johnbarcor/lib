import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(width: 200.0, height: 200.0)
            ],
          ),
        ));
  }
}
