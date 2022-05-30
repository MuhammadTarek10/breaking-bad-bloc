import 'package:breaking_bad/app/di.dart';
import 'package:breaking_bad/data/repository/repository.dart';
import 'package:breaking_bad/logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/presentation/views/charachter_details_view.dart';
import 'package:breaking_bad/presentation/views/characters_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String splashRoute = '/';
  static const String charactersRoute = '/characters';
  static const String characterDetailsRoute = '/characterDetails';
}

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.charactersRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => CharactersCubit(instance<Repository>()),
                  child: const CharactersView(),
                ));
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
