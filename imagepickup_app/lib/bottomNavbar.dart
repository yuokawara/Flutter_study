import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/other');
            },
          ),
        ],
      ),
    );
  }
}
