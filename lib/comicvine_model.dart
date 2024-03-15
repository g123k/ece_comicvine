import 'package:json_annotation/json_annotation.dart';

part 'comicvine_model.g.dart';

@JsonSerializable()
class CharactersResponse {
  @JsonKey(name: 'results')
  final List<CharactersResponseItem> results;

  CharactersResponse(this.results);

  factory CharactersResponse.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersResponseToJson(this);
}

@JsonSerializable()
class CharactersResponseItem {
  @JsonKey(name: 'api_detail_url')
  final String apiUrl;

  CharactersResponseItem(this.apiUrl);

  factory CharactersResponseItem.fromJson(Map<String, dynamic> json) =>
      _$CharactersResponseItemFromJson(json);

  Map<String, dynamic> toJson() => _$CharactersResponseItemToJson(this);
}
