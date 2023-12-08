// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelsParamsModel _$HotelsParamsModelFromJson(Map<String, dynamic> json) {
  return _HotelsParamsModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsParamsModel {
  List<int>? get codes => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsParamsModelCopyWith<HotelsParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsParamsModelCopyWith<$Res> {
  factory $HotelsParamsModelCopyWith(
          HotelsParamsModel value, $Res Function(HotelsParamsModel) then) =
      _$HotelsParamsModelCopyWithImpl<$Res, HotelsParamsModel>;
  @useResult
  $Res call(
      {List<int>? codes,
      String? countryCode,
      int? from,
      int? to,
      String? language});
}

/// @nodoc
class _$HotelsParamsModelCopyWithImpl<$Res, $Val extends HotelsParamsModel>
    implements $HotelsParamsModelCopyWith<$Res> {
  _$HotelsParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = freezed,
    Object? countryCode = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? language = freezed,
  }) {
    return _then(_value.copyWith(
      codes: freezed == codes
          ? _value.codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelsParamsModelImplCopyWith<$Res>
    implements $HotelsParamsModelCopyWith<$Res> {
  factory _$$HotelsParamsModelImplCopyWith(_$HotelsParamsModelImpl value,
          $Res Function(_$HotelsParamsModelImpl) then) =
      __$$HotelsParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<int>? codes,
      String? countryCode,
      int? from,
      int? to,
      String? language});
}

/// @nodoc
class __$$HotelsParamsModelImplCopyWithImpl<$Res>
    extends _$HotelsParamsModelCopyWithImpl<$Res, _$HotelsParamsModelImpl>
    implements _$$HotelsParamsModelImplCopyWith<$Res> {
  __$$HotelsParamsModelImplCopyWithImpl(_$HotelsParamsModelImpl _value,
      $Res Function(_$HotelsParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codes = freezed,
    Object? countryCode = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? language = freezed,
  }) {
    return _then(_$HotelsParamsModelImpl(
      codes: freezed == codes
          ? _value._codes
          : codes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsParamsModelImpl implements _HotelsParamsModel {
  const _$HotelsParamsModelImpl(
      {final List<int>? codes,
      this.countryCode,
      this.from,
      this.to,
      this.language})
      : _codes = codes;

  factory _$HotelsParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsParamsModelImplFromJson(json);

  final List<int>? _codes;
  @override
  List<int>? get codes {
    final value = _codes;
    if (value == null) return null;
    if (_codes is EqualUnmodifiableListView) return _codes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? countryCode;
  @override
  final int? from;
  @override
  final int? to;
  @override
  final String? language;

  @override
  String toString() {
    return 'HotelsParamsModel(codes: $codes, countryCode: $countryCode, from: $from, to: $to, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsParamsModelImpl &&
            const DeepCollectionEquality().equals(other._codes, _codes) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_codes),
      countryCode,
      from,
      to,
      language);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsParamsModelImplCopyWith<_$HotelsParamsModelImpl> get copyWith =>
      __$$HotelsParamsModelImplCopyWithImpl<_$HotelsParamsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsParamsModelImplToJson(
      this,
    );
  }
}

abstract class _HotelsParamsModel implements HotelsParamsModel {
  const factory _HotelsParamsModel(
      {final List<int>? codes,
      final String? countryCode,
      final int? from,
      final int? to,
      final String? language}) = _$HotelsParamsModelImpl;

  factory _HotelsParamsModel.fromJson(Map<String, dynamic> json) =
      _$HotelsParamsModelImpl.fromJson;

  @override
  List<int>? get codes;
  @override
  String? get countryCode;
  @override
  int? get from;
  @override
  int? get to;
  @override
  String? get language;
  @override
  @JsonKey(ignore: true)
  _$$HotelsParamsModelImplCopyWith<_$HotelsParamsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
