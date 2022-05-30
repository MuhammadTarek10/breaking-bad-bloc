import 'package:breaking_bad/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';

class CharactersView extends StatelessWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: ColorManager.white,
        child: const Center(
          child: Text(
            "Characters",
          ),
        ),
      ),
    );
  }
}
