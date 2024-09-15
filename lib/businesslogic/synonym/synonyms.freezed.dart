// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'synonyms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Synonyms _$SynonymsFromJson(Map<String, dynamic> json) {
  return _Synonyms.fromJson(json);
}

/// @nodoc
mixin _$Synonyms {
  String get explanation => throw _privateConstructorUsedError;
  List<Synonym> get synonyms => throw _privateConstructorUsedError;

  /// Serializes this Synonyms to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Synonyms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SynonymsCopyWith<Synonyms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynonymsCopyWith<$Res> {
  factory $SynonymsCopyWith(Synonyms value, $Res Function(Synonyms) then) =
      _$SynonymsCopyWithImpl<$Res, Synonyms>;
  @useResult
  $Res call({String explanation, List<Synonym> synonyms});
}

/// @nodoc
class _$SynonymsCopyWithImpl<$Res, $Val extends Synonyms>
    implements $SynonymsCopyWith<$Res> {
  _$SynonymsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Synonyms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explanation = null,
    Object? synonyms = null,
  }) {
    return _then(_value.copyWith(
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<Synonym>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SynonymsImplCopyWith<$Res>
    implements $SynonymsCopyWith<$Res> {
  factory _$$SynonymsImplCopyWith(
          _$SynonymsImpl value, $Res Function(_$SynonymsImpl) then) =
      __$$SynonymsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String explanation, List<Synonym> synonyms});
}

/// @nodoc
class __$$SynonymsImplCopyWithImpl<$Res>
    extends _$SynonymsCopyWithImpl<$Res, _$SynonymsImpl>
    implements _$$SynonymsImplCopyWith<$Res> {
  __$$SynonymsImplCopyWithImpl(
      _$SynonymsImpl _value, $Res Function(_$SynonymsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Synonyms
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? explanation = null,
    Object? synonyms = null,
  }) {
    return _then(_$SynonymsImpl(
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms: null == synonyms
          ? _value._synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<Synonym>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SynonymsImpl implements _Synonyms {
  const _$SynonymsImpl(
      {required this.explanation, required final List<Synonym> synonyms})
      : _synonyms = synonyms;

  factory _$SynonymsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SynonymsImplFromJson(json);

  @override
  final String explanation;
  final List<Synonym> _synonyms;
  @override
  List<Synonym> get synonyms {
    if (_synonyms is EqualUnmodifiableListView) return _synonyms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_synonyms);
  }

  @override
  String toString() {
    return 'Synonyms(explanation: $explanation, synonyms: $synonyms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SynonymsImpl &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._synonyms, _synonyms));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, explanation, const DeepCollectionEquality().hash(_synonyms));

  /// Create a copy of Synonyms
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SynonymsImplCopyWith<_$SynonymsImpl> get copyWith =>
      __$$SynonymsImplCopyWithImpl<_$SynonymsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SynonymsImplToJson(
      this,
    );
  }
}

abstract class _Synonyms implements Synonyms {
  const factory _Synonyms(
      {required final String explanation,
      required final List<Synonym> synonyms}) = _$SynonymsImpl;

  factory _Synonyms.fromJson(Map<String, dynamic> json) =
      _$SynonymsImpl.fromJson;

  @override
  String get explanation;
  @override
  List<Synonym> get synonyms;

  /// Create a copy of Synonyms
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SynonymsImplCopyWith<_$SynonymsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Synonym _$SynonymFromJson(Map<String, dynamic> json) {
  return _Synonym.fromJson(json);
}

/// @nodoc
mixin _$Synonym {
  String get word => throw _privateConstructorUsedError;
  String get explanation => throw _privateConstructorUsedError;
  List<String> get examples => throw _privateConstructorUsedError;

  /// Serializes this Synonym to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Synonym
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SynonymCopyWith<Synonym> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynonymCopyWith<$Res> {
  factory $SynonymCopyWith(Synonym value, $Res Function(Synonym) then) =
      _$SynonymCopyWithImpl<$Res, Synonym>;
  @useResult
  $Res call({String word, String explanation, List<String> examples});
}

/// @nodoc
class _$SynonymCopyWithImpl<$Res, $Val extends Synonym>
    implements $SynonymCopyWith<$Res> {
  _$SynonymCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Synonym
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? explanation = null,
    Object? examples = null,
  }) {
    return _then(_value.copyWith(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value.examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SynonymImplCopyWith<$Res> implements $SynonymCopyWith<$Res> {
  factory _$$SynonymImplCopyWith(
          _$SynonymImpl value, $Res Function(_$SynonymImpl) then) =
      __$$SynonymImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String word, String explanation, List<String> examples});
}

/// @nodoc
class __$$SynonymImplCopyWithImpl<$Res>
    extends _$SynonymCopyWithImpl<$Res, _$SynonymImpl>
    implements _$$SynonymImplCopyWith<$Res> {
  __$$SynonymImplCopyWithImpl(
      _$SynonymImpl _value, $Res Function(_$SynonymImpl) _then)
      : super(_value, _then);

  /// Create a copy of Synonym
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? word = null,
    Object? explanation = null,
    Object? examples = null,
  }) {
    return _then(_$SynonymImpl(
      word: null == word
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      examples: null == examples
          ? _value._examples
          : examples // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SynonymImpl implements _Synonym {
  const _$SynonymImpl(
      {required this.word,
      required this.explanation,
      required final List<String> examples})
      : _examples = examples;

  factory _$SynonymImpl.fromJson(Map<String, dynamic> json) =>
      _$$SynonymImplFromJson(json);

  @override
  final String word;
  @override
  final String explanation;
  final List<String> _examples;
  @override
  List<String> get examples {
    if (_examples is EqualUnmodifiableListView) return _examples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_examples);
  }

  @override
  String toString() {
    return 'Synonym(word: $word, explanation: $explanation, examples: $examples)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SynonymImpl &&
            (identical(other.word, word) || other.word == word) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            const DeepCollectionEquality().equals(other._examples, _examples));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, word, explanation,
      const DeepCollectionEquality().hash(_examples));

  /// Create a copy of Synonym
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SynonymImplCopyWith<_$SynonymImpl> get copyWith =>
      __$$SynonymImplCopyWithImpl<_$SynonymImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SynonymImplToJson(
      this,
    );
  }
}

abstract class _Synonym implements Synonym {
  const factory _Synonym(
      {required final String word,
      required final String explanation,
      required final List<String> examples}) = _$SynonymImpl;

  factory _Synonym.fromJson(Map<String, dynamic> json) = _$SynonymImpl.fromJson;

  @override
  String get word;
  @override
  String get explanation;
  @override
  List<String> get examples;

  /// Create a copy of Synonym
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SynonymImplCopyWith<_$SynonymImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
