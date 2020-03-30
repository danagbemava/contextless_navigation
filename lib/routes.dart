import 'package:contextless_navigation/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Router {
  static Route<dynamic> routes(RouteSettings settings) {
    Widget screen;
    var name = settings.name;
    var args = settings.arguments;

    switch (name) {
      case '/':
        screen = MyHomePage(
          title: 'Home',
        );
        break;
      case '/login':
        screen = LoginScreen();
        break;
      default:
        screen = MyHomePage(
          title: 'Home',
        );
    }

    return GetRoute(page: screen);
  }

  static RouteFactory navRoutes() {
    return (settings) {
      Widget screen;
      var name = settings.name;
      var args = settings.arguments;

      switch (name) {
        case '/':
          screen = MyHomePage(
            title: 'Home',
          );
          break;
        case '/login':
          screen = LoginScreen();
          break;
        default:
          screen = MyHomePage(
            title: 'Home',
          );
      }

      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
