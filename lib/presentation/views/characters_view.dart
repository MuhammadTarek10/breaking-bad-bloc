import 'dart:developer';

import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/logic/cubit/characters_cubit.dart';
import 'package:breaking_bad/presentation/resources/color_manager.dart';
import 'package:breaking_bad/presentation/widgets/characters_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersView extends StatefulWidget {
  const CharactersView({Key? key}) : super(key: key);

  @override
  State<CharactersView> createState() => _CharactersViewState();
}

class _CharactersViewState extends State<CharactersView> {
  var  allCharacters;

  @override
  void initState() {
    super.initState();
    _getCharacters();
  }

  _getCharacters() async {
    final temp =
        await BlocProvider.of<CharactersCubit>(context).getAllCharacters();
    setState(() {
      allCharacters = temp!;
    });
  }

  Widget _buildBlocWidget() {
    return BlocBuilder(
      builder: ((context, state) {
        if (state is CharactersLoaded) {
          print("ASDSD");
          allCharacters = (state).characters;
          return _buildLoadedWidget();
        } else {
          return const Center(
              child: CircularProgressIndicator(
            color: ColorManager.yellow,
          ));
        }
      }),
    );
  }

  Widget _buildLoadedWidget() {
    return SingleChildScrollView(
      child: Container(
        color: ColorManager.grey,
        child: Column(
          children: [
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 1,
                  mainAxisSpacing: 1,
                ),
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: allCharacters?.length ?? 0,
                itemBuilder: (context, index) {
                  return CharacterItem(
                    character: allCharacters![index],
                  );
                }),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.yellow,
        title: const Text(
          'Breaking Bad Characters',
          style: TextStyle(
            color: ColorManager.grey,
          ),
        ),
      ),
      body: allCharacters?.length == 0
          ? _buildBlocWidget()
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
