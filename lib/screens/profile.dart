import 'package:flutter/material.dart';


class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text('Profile',
            style: TextStyle(
              fontSize: 24,
              color: Color(0xFF1F0E32),
              fontWeight: FontWeight.bold,
              // fontFamily: Fontfamily,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    ),
    );
  }
}
