// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'synonym_suggestion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SynonymSuggestion _$SynonymSuggestionFromJson(Map<String, dynamic> json) {
  return _SynonymSuggestion.fromJson(json);
}

/// @nodoc
mixin _$SynonymSuggestion {
  Synonyms get synonyms => throw _privateConstructorUsedError;
  Synonym? get suggested => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this SynonymSuggestion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SynonymSuggestionCopyWith<SynonymSuggestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SynonymSuggestionCopyWith<$Res> {
  factory $SynonymSuggestionCopyWith(
          SynonymSuggestion value, $Res Function(SynonymSuggestion) then) =
      _$SynonymSuggestionCopyWithImpl<$Res, SynonymSuggestion>;
  @useResult
  $Res call({Synonyms synonyms, Synonym? suggested, String? reason});

  $SynonymsCopyWith<$Res> get synonyms;
  $SynonymCopyWith<$Res>? get suggested;
}

/// @nodoc
class _$SynonymSuggestionCopyWithImpl<$Res, $Val extends SynonymSuggestion>
    implements $SynonymSuggestionCopyWith<$Res> {
  _$SynonymSuggestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? synonyms = null,
    Object? suggested = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as Synonyms,
      suggested: freezed == suggested
          ? _value.suggested
          : suggested // ignore: cast_nullable_to_non_nullable
              as Synonym?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SynonymsCopyWith<$Res> get synonyms {
    return $SynonymsCopyWith<$Res>(_value.synonyms, (value) {
      return _then(_value.copyWith(synonyms: value) as $Val);
    });
  }

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SynonymCopyWith<$Res>? get suggested {
    if (_value.suggested == null) {
      return null;
    }

    return $SynonymCopyWith<$Res>(_value.suggested!, (value) {
      return _then(_value.copyWith(suggested: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SynonymSuggestionImplCopyWith<$Res>
    implements $SynonymSuggestionCopyWith<$Res> {
  factory _$$SynonymSuggestionImplCopyWith(_$SynonymSuggestionImpl value,
          $Res Function(_$SynonymSuggestionImpl) then) =
      __$$SynonymSuggestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Synonyms synonyms, Synonym? suggested, String? reason});

  @override
  $SynonymsCopyWith<$Res> get synonyms;
  @override
  $SynonymCopyWith<$Res>? get suggested;
}

/// @nodoc
class __$$SynonymSuggestionImplCopyWithImpl<$Res>
    extends _$SynonymSuggestionCopyWithImpl<$Res, _$SynonymSuggestionImpl>
    implements _$$SynonymSuggestionImplCopyWith<$Res> {
  __$$SynonymSuggestionImplCopyWithImpl(_$SynonymSuggestionImpl _value,
      $Res Function(_$SynonymSuggestionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? synonyms = null,
    Object? suggested = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$SynonymSuggestionImpl(
      synonyms: null == synonyms
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as Synonyms,
      suggested: freezed == suggested
          ? _value.suggested
          : suggested // ignore: cast_nullable_to_non_nullable
              as Synonym?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SynonymSuggestionImpl implements _SynonymSuggestion {
  const _$SynonymSuggestionImpl(
      {required this.synonyms, this.suggested, this.reason});

  factory _$SynonymSuggestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SynonymSuggestionImplFromJson(json);

  @override
  final Synonyms synonyms;
  @override
  final Synonym? suggested;
  @override
  final String? reason;

  @override
  String toString() {
    return 'SynonymSuggestion(synonyms: $synonyms, suggested: $suggested, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SynonymSuggestionImpl &&
            (identical(other.synonyms, synonyms) ||
                other.synonyms == synonyms) &&
            (identical(other.suggested, suggested) ||
                other.suggested == suggested) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, synonyms, suggested, reason);

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SynonymSuggestionImplCopyWith<_$SynonymSuggestionImpl> get copyWith =>
      __$$SynonymSuggestionImplCopyWithImpl<_$SynonymSuggestionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SynonymSuggestionImplToJson(
      this,
    );
  }
}

abstract class _SynonymSuggestion implements SynonymSuggestion {
  const factory _SynonymSuggestion(
      {required final Synonyms synonyms,
      final Synonym? suggested,
      final String? reason}) = _$SynonymSuggestionImpl;

  factory _SynonymSuggestion.fromJson(Map<String, dynamic> json) =
      _$SynonymSuggestionImpl.fromJson;

  @override
  Synonyms get synonyms;
  @override
  Synonym? get suggested;
  @override
  String? get reason;

  /// Create a copy of SynonymSuggestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SynonymSuggestionImplCopyWith<_$SynonymSuggestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
