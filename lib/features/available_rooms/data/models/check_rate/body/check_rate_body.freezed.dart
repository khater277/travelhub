// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_rate_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckRateBody _$CheckRateBodyFromJson(Map<String, dynamic> json) {
  return _CheckRateBody.fromJson(json);
}

/// @nodoc
mixin _$CheckRateBody {
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckRateBodyCopyWith<CheckRateBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckRateBodyCopyWith<$Res> {
  factory $CheckRateBodyCopyWith(
          CheckRateBody value, $Res Function(CheckRateBody) then) =
      _$CheckRateBodyCopyWithImpl<$Res, CheckRateBody>;
  @useResult
  $Res call({@JsonKey(name: 'rooms') List<RateRoom>? rateRooms});
}

/// @nodoc
class _$CheckRateBodyCopyWithImpl<$Res, $Val extends CheckRateBody>
    implements $CheckRateBodyCopyWith<$Res> {
  _$CheckRateBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateRooms = freezed,
  }) {
    return _then(_value.copyWith(
      rateRooms: freezed == rateRooms
          ? _value.rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckRateBodyImplCopyWith<$Res>
    implements $CheckRateBodyCopyWith<$Res> {
  factory _$$CheckRateBodyImplCopyWith(
          _$CheckRateBodyImpl value, $Res Function(_$CheckRateBodyImpl) then) =
      __$$CheckRateBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'rooms') List<RateRoom>? rateRooms});
}

/// @nodoc
class __$$CheckRateBodyImplCopyWithImpl<$Res>
    extends _$CheckRateBodyCopyWithImpl<$Res, _$CheckRateBodyImpl>
    implements _$$CheckRateBodyImplCopyWith<$Res> {
  __$$CheckRateBodyImplCopyWithImpl(
      _$CheckRateBodyImpl _value, $Res Function(_$CheckRateBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateRooms = freezed,
  }) {
    return _then(_$CheckRateBodyImpl(
      rateRooms: freezed == rateRooms
          ? _value._rateRooms
          : rateRooms // ignore: cast_nullable_to_non_nullable
              as List<RateRoom>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckRateBodyImpl implements _CheckRateBody {
  _$CheckRateBodyImpl({@JsonKey(name: 'rooms') final List<RateRoom>? rateRooms})
      : _rateRooms = rateRooms;

  factory _$CheckRateBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckRateBodyImplFromJson(json);

  final List<RateRoom>? _rateRooms;
  @override
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms {
    final value = _rateRooms;
    if (value == null) return null;
    if (_rateRooms is EqualUnmodifiableListView) return _rateRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CheckRateBody(rateRooms: $rateRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckRateBodyImpl &&
            const DeepCollectionEquality()
                .equals(other._rateRooms, _rateRooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rateRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckRateBodyImplCopyWith<_$CheckRateBodyImpl> get copyWith =>
      __$$CheckRateBodyImplCopyWithImpl<_$CheckRateBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckRateBodyImplToJson(
      this,
    );
  }
}

abstract class _CheckRateBody implements CheckRateBody {
  factory _CheckRateBody(
          {@JsonKey(name: 'rooms') final List<RateRoom>? rateRooms}) =
      _$CheckRateBodyImpl;

  factory _CheckRateBody.fromJson(Map<String, dynamic> json) =
      _$CheckRateBodyImpl.fromJson;

  @override
  @JsonKey(name: 'rooms')
  List<RateRoom>? get rateRooms;
  @override
  @JsonKey(ignore: true)
  _$$CheckRateBodyImplCopyWith<_$CheckRateBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
