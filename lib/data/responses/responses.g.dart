// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterResponse _$CharacterResponseFromJson(Map<String, dynamic> json) =>
    CharacterResponse(
      json['char_id'] as int?,
      json['name'] as String?,
      json['birthday'] as String?,
      (json['occupation'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['img'] as String?,
      json['status'] as String?,
      json['nickname'] as String?,
      (json['appearance'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['portrayed'] as String?,
      json['category'] as String?,
      (json['better_call_saul_appearance'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$CharacterResponseToJson(CharacterResponse instance) =>
    <String, dynamic>{
      'char_id': instance.id,
      'name': instance.name,
      'birthday': instance.birthday,
      'occupation': instance.occupation,
      'img': instance.img,
      'status': instance.status,
      'nickname': instance.nickname,
      'appearance': instance.appearance,
      'portrayed': instance.portrayed,
      'category': instance.category,
      'better_call_saul_appearance': instance.betterCallSaulAppearance,
    };

AllCharactersResponse _$AllCharactersResponseFromJson(
        Map<String, dynamic> json) =>
    AllCharactersResponse(
      (json['characters'] as List<dynamic>?)
          ?.map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllCharactersResponseToJson(
        AllCharactersResponse instance) =>
    <String, dynamic>{
      'characters': instance.characters,
    };
