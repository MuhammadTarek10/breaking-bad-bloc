import 'package:breaking_bad/presentation/views/characters_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String charachtersRoute = '/characters';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.charachtersRoute:
        return MaterialPageRoute(builder: (_) => const CharachtersView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("LOL"),
        ),
      ),
    );
  }
}
