// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilityDescription _$FacilityDescriptionFromJson(Map<String, dynamic> json) {
  return _FacilityDescription.fromJson(json);
}

/// @nodoc
mixin _$FacilityDescription {
  @HiveField(0)
  String? get languageCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilityDescriptionCopyWith<FacilityDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityDescriptionCopyWith<$Res> {
  factory $FacilityDescriptionCopyWith(
          FacilityDescription value, $Res Function(FacilityDescription) then) =
      _$FacilityDescriptionCopyWithImpl<$Res, FacilityDescription>;
  @useResult
  $Res call(
      {@HiveField(0) String? languageCode, @HiveField(1) String? content});
}

/// @nodoc
class _$FacilityDescriptionCopyWithImpl<$Res, $Val extends FacilityDescription>
    implements $FacilityDescriptionCopyWith<$Res> {
  _$FacilityDescriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityDescriptionImplCopyWith<$Res>
    implements $FacilityDescriptionCopyWith<$Res> {
  factory _$$FacilityDescriptionImplCopyWith(_$FacilityDescriptionImpl value,
          $Res Function(_$FacilityDescriptionImpl) then) =
      __$$FacilityDescriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? languageCode, @HiveField(1) String? content});
}

/// @nodoc
class __$$FacilityDescriptionImplCopyWithImpl<$Res>
    extends _$FacilityDescriptionCopyWithImpl<$Res, _$FacilityDescriptionImpl>
    implements _$$FacilityDescriptionImplCopyWith<$Res> {
  __$$FacilityDescriptionImplCopyWithImpl(_$FacilityDescriptionImpl _value,
      $Res Function(_$FacilityDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = freezed,
    Object? content = freezed,
  }) {
    return _then(_$FacilityDescriptionImpl(
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityDescriptionImpl implements _FacilityDescription {
  _$FacilityDescriptionImpl(
      {@HiveField(0) this.languageCode, @HiveField(1) this.content});

  factory _$FacilityDescriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityDescriptionImplFromJson(json);

  @override
  @HiveField(0)
  final String? languageCode;
  @override
  @HiveField(1)
  final String? content;

  @override
  String toString() {
    return 'FacilityDescription(languageCode: $languageCode, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityDescriptionImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityDescriptionImplCopyWith<_$FacilityDescriptionImpl> get copyWith =>
      __$$FacilityDescriptionImplCopyWithImpl<_$FacilityDescriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityDescriptionImplToJson(
      this,
    );
  }
}

abstract class _FacilityDescription implements FacilityDescription {
  factory _FacilityDescription(
      {@HiveField(0) final String? languageCode,
      @HiveField(1) final String? content}) = _$FacilityDescriptionImpl;

  factory _FacilityDescription.fromJson(Map<String, dynamic> json) =
      _$FacilityDescriptionImpl.fromJson;

  @override
  @HiveField(0)
  String? get languageCode;
  @override
  @HiveField(1)
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$FacilityDescriptionImplCopyWith<_$FacilityDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
