// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comicvine_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharactersResponse _$CharactersResponseFromJson(Map<String, dynamic> json) =>
    CharactersResponse(
      (json['results'] as List<dynamic>)
          .map(
              (e) => CharactersResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CharactersResponseToJson(CharactersResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

CharactersResponseItem _$CharactersResponseItemFromJson(
        Map<String, dynamic> json) =>
    CharactersResponseItem(
      json['api_detail_url'] as String,
    );

Map<String, dynamic> _$CharactersResponseItemToJson(
        CharactersResponseItem instance) =>
    <String, dynamic>{
      'api_detail_url': instance.apiUrl,
    };
