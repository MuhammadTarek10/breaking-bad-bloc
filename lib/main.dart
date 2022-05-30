import 'package:breaking_bad/app/app.dart';
import 'package:breaking_bad/app/di.dart';
import 'package:flutter/material.dart';

void main() async {
  await initAppModule();
  runApp(const BreakingBadApp());
}
