// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stay _$StayFromJson(Map<String, dynamic> json) {
  return _Stay.fromJson(json);
}

/// @nodoc
mixin _$Stay {
  String? get checkIn => throw _privateConstructorUsedError;
  String? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StayCopyWith<Stay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StayCopyWith<$Res> {
  factory $StayCopyWith(Stay value, $Res Function(Stay) then) =
      _$StayCopyWithImpl<$Res, Stay>;
  @useResult
  $Res call({String? checkIn, String? checkOut});
}

/// @nodoc
class _$StayCopyWithImpl<$Res, $Val extends Stay>
    implements $StayCopyWith<$Res> {
  _$StayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StayImplCopyWith<$Res> implements $StayCopyWith<$Res> {
  factory _$$StayImplCopyWith(
          _$StayImpl value, $Res Function(_$StayImpl) then) =
      __$$StayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? checkIn, String? checkOut});
}

/// @nodoc
class __$$StayImplCopyWithImpl<$Res>
    extends _$StayCopyWithImpl<$Res, _$StayImpl>
    implements _$$StayImplCopyWith<$Res> {
  __$$StayImplCopyWithImpl(_$StayImpl _value, $Res Function(_$StayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkIn = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$StayImpl(
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StayImpl implements _Stay {
  _$StayImpl({this.checkIn, this.checkOut});

  factory _$StayImpl.fromJson(Map<String, dynamic> json) =>
      _$$StayImplFromJson(json);

  @override
  final String? checkIn;
  @override
  final String? checkOut;

  @override
  String toString() {
    return 'Stay(checkIn: $checkIn, checkOut: $checkOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StayImpl &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, checkIn, checkOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StayImplCopyWith<_$StayImpl> get copyWith =>
      __$$StayImplCopyWithImpl<_$StayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StayImplToJson(
      this,
    );
  }
}

abstract class _Stay implements Stay {
  factory _Stay({final String? checkIn, final String? checkOut}) = _$StayImpl;

  factory _Stay.fromJson(Map<String, dynamic> json) = _$StayImpl.fromJson;

  @override
  String? get checkIn;
  @override
  String? get checkOut;
  @override
  @JsonKey(ignore: true)
  _$$StayImplCopyWith<_$StayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
