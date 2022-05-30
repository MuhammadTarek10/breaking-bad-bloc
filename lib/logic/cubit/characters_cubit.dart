import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit() : super(CharactersInitial());
}
