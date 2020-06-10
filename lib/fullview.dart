import 'package:flutter/material.dart';
import 'package:flutter_widget_bank/data.dart';

class FullView extends StatelessWidget {
  String image;

  FullView({this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Hero(tag: image, child: Image(image: AssetImage(image)))),
    );
  }
}
