import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:writers/businesslogic/synonym/synonyms.dart';

part 'synonym_suggestion.freezed.dart';
part 'synonym_suggestion.g.dart';

@freezed
class SynonymSuggestion with _$SynonymSuggestion {
  const factory SynonymSuggestion({
    required Synonyms synonyms,
    Synonym? suggested,
    String? reason,
  }) = _SynonymSuggestion;

  factory SynonymSuggestion.fromJson(Map<String, dynamic> json) =>
      _$SynonymSuggestionFromJson(json);
}
