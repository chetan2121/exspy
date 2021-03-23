import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Inventory',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF1F0E32),
              fontWeight: FontWeight.bold,
              // fontFamily: Fontfamily,
              letterSpacing: 1,
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              FontAwesomeIcons.filter,
              color: Color(0xFF1F0E32),
              size: 17,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              FontAwesomeIcons.search,
              color: Color(0xFF1F0E32),
              size: 17,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
    ),
    );
  }
}
