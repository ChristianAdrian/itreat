import 'package:flutter/material.dart';
import 'package:itreat/widgets/drawer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      elevation: 0.0,
      //title:
      backgroundColor: //Color.fromRGBO(239, 133, 33, 1),
          Colors.black,
      iconTheme: new IconThemeData(color: Colors.black),
      actions: <Widget>[],
    );
  }
}
