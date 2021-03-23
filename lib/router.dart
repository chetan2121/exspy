import 'package:flutter/material.dart';

import 'bottomnavbar.dart';
import 'main.dart';




class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(
            builder: (_)=> BottomBar()
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            ));
    }
  }
}