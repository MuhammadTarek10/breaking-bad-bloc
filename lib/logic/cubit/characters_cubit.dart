import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/repository/repository.dart';
import 'package:breaking_bad/data/web/failure.dart';
import 'package:flutter/foundation.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final Repository _repository;
  CharactersCubit(this._repository) : super(CharactersInitial());

  Future<List<Character>?> getAllCharacters() async {
    (await _repository.getAllCharacters()).fold((failure) {
      emit(state);
      return null;
    }, (charchters) {
      emit(state);
      return charchters;
    });
    return null;
  }
}
