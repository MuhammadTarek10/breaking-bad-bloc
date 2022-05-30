import 'package:breaking_bad/data/models/character.dart';
import 'package:breaking_bad/data/responses/responses.dart';
import 'package:breaking_bad/app/extensions.dart';

extension CharacterResponseExtension on CharacterResponse {
  Character toModel() {
    return Character(
      id.orZero(),
      name.orEmpty(),
      birthday.orEmpty(),
      (occupation?.map((e) => e) ?? const Iterable.empty())
          .cast<String>()
          .toList(),
      img.orEmpty(),
      status.orEmpty(),
      nickname.orEmpty(),
      (appearance?.map((e) => e) ?? const Iterable.empty())
          .cast<int>()
          .toList(),
      portrayed.orEmpty(),
      category.orEmpty(),
      (betterCallSaulAppearance?.map((e) => e) ?? const Iterable.empty())
          .cast<int>()
          .toList(),
    );
  }
}

extension AllCharactersResponseExtension on AllCharactersResponse {
  List<Character> toModel() {
    return (characters?.map((e) => e.toModel()) ?? const Iterable.empty())
        .cast<Character>()
        .toList();
  }
}
