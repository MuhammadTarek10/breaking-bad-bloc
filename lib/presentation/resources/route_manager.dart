import 'package:breaking_bad/presentation/views/charachter_details_view.dart';
import 'package:breaking_bad/presentation/views/characters_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String charactersRoute = '/characters';
  static const String characterDetailsRoute = '/characterDetails';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.charactersRoute:
        return MaterialPageRoute(builder: (_) => const CharactersView());
      case Routes.characterDetailsRoute:
        return MaterialPageRoute(builder: (_) => const CharacterDetailsView());
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
