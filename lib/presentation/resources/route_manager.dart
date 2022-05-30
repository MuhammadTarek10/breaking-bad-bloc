import 'package:breaking_bad/presentation/views/charachter_details_view.dart';
import 'package:breaking_bad/presentation/views/characters_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String charachtersRoute = '/characters';
  static const String charachterDetailsRoute = '/charachterDetails';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.charachtersRoute:
        return MaterialPageRoute(builder: (_) => const CharachtersView());
      case Routes.charachterDetailsRoute:
        return MaterialPageRoute(builder: (_) => const CharachterDetailsView());
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
