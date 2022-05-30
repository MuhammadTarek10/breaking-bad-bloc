import 'package:flutter/material.dart';

class CharachtersView extends StatelessWidget {
  const CharachtersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: const Center(
          child: Text(
            "Characters",
          ),
        ),
      ),
    );
  }
}
