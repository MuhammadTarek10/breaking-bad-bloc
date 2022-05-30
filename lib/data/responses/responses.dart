import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class CharacterResponse {
  @JsonKey(name: "char_id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "birthday")
  String? birthday;
  @JsonKey(name: "occupation")
  List<String>? occupation;
  @JsonKey(name: "img")
  String? img;
  @JsonKey(name: "status")
  String? status;
  @JsonKey(name: "nickname")
  String? nickname;
  @JsonKey(name: "appearance")
  List<int>? appearance;
  @JsonKey(name: "portrayed")
  String? portrayed;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "better_call_saul_appearance")
  List<int>? betterCallSaulAppearance;


  CharacterResponse(
    this.id,
    this.name,
    this.birthday,
    this.occupation,
    this.img,
    this.status,
    this.nickname,
    this.appearance,
    this.portrayed,
    this.category,
    this.betterCallSaulAppearance,
  );

  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);
}

@JsonSerializable()
class AllCharactersResponse {
  @JsonKey(name: "characters")
  List<CharacterResponse>? characters;

  AllCharactersResponse(
    this.characters,
  );

  factory AllCharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$AllCharactersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AllCharactersResponseToJson(this);
}
