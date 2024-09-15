import 'package:freezed_annotation/freezed_annotation.dart';

part 'synonyms.freezed.dart';
part 'synonyms.g.dart';

@freezed
class Synonyms with _$Synonyms {
  const factory Synonyms({
    required String explanation,
    required List<Synonym> synonyms,
  }) = _Synonyms;

  factory Synonyms.fromJson(Map<String, dynamic> json) =>
      _$SynonymsFromJson(json);
}

@freezed
class Synonym with _$Synonym {
  const factory Synonym({
    required String word,
    required String explanation,
    required List<String> examples,
  }) = _Synonym;

  factory Synonym.fromJson(Map<String, dynamic> json) =>
      _$SynonymFromJson(json);
}
