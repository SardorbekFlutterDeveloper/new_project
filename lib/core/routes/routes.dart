import 'package:flutter/material.dart';
import 'package:new_project/views/home_page.dart';
import 'package:new_project/views/product.dart';
import 'package:new_project/views/splash.dart';
import 'package:new_project/views/usage.dart';

class Routes {
  Route? ongenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (context) => SplashPage());
      case "/home":
        return MaterialPageRoute(builder: (context) => MyHomePage());
      case "/lessons":
        return MaterialPageRoute(
          builder: (context) => ProductPage(),
        );
      case "/video":
        return MaterialPageRoute(
          builder: (context) => UsagePage(),
        );

      default:
    }
  }
}
