// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synonym_suggestion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SynonymSuggestionImpl _$$SynonymSuggestionImplFromJson(
        Map<String, dynamic> json) =>
    _$SynonymSuggestionImpl(
      synonyms: Synonyms.fromJson(json['synonyms'] as Map<String, dynamic>),
      suggested: json['suggested'] == null
          ? null
          : Synonym.fromJson(json['suggested'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$SynonymSuggestionImplToJson(
        _$SynonymSuggestionImpl instance) =>
    <String, dynamic>{
      'synonyms': instance.synonyms,
      'suggested': instance.suggested,
      'reason': instance.reason,
    };
