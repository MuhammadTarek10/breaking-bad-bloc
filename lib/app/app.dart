import 'package:breaking_bad/presentation/resources/route_manager.dart';
import 'package:flutter/material.dart';

class BreakingBadApp extends StatelessWidget {
  const BreakingBadApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: Routes.charachtersRoute,
    );
  }
}
