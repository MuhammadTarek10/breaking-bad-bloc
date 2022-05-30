import 'package:breaking_bad/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class CharachterDetailsView extends StatelessWidget {
  const CharachterDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: ColorManager.white,
        height: double.infinity,
        width: double.infinity,
        child: const Text("Character Details"),
      ),
    );
  }
}
