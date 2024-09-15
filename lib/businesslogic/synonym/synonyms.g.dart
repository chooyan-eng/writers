// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synonyms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SynonymsImpl _$$SynonymsImplFromJson(Map<String, dynamic> json) =>
    _$SynonymsImpl(
      explanation: json['explanation'] as String,
      synonyms: (json['synonyms'] as List<dynamic>)
          .map((e) => Synonym.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SynonymsImplToJson(_$SynonymsImpl instance) =>
    <String, dynamic>{
      'explanation': instance.explanation,
      'synonyms': instance.synonyms,
    };

_$SynonymImpl _$$SynonymImplFromJson(Map<String, dynamic> json) =>
    _$SynonymImpl(
      word: json['word'] as String,
      explanation: json['explanation'] as String,
      examples:
          (json['examples'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SynonymImplToJson(_$SynonymImpl instance) =>
    <String, dynamic>{
      'word': instance.word,
      'explanation': instance.explanation,
      'examples': instance.examples,
    };
