// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RateRoom _$RateRoomFromJson(Map<String, dynamic> json) {
  return _RateRoom.fromJson(json);
}

/// @nodoc
mixin _$RateRoom {
  String? get rateKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateRoomCopyWith<RateRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateRoomCopyWith<$Res> {
  factory $RateRoomCopyWith(RateRoom value, $Res Function(RateRoom) then) =
      _$RateRoomCopyWithImpl<$Res, RateRoom>;
  @useResult
  $Res call({String? rateKey});
}

/// @nodoc
class _$RateRoomCopyWithImpl<$Res, $Val extends RateRoom>
    implements $RateRoomCopyWith<$Res> {
  _$RateRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
  }) {
    return _then(_value.copyWith(
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RateRoomImplCopyWith<$Res>
    implements $RateRoomCopyWith<$Res> {
  factory _$$RateRoomImplCopyWith(
          _$RateRoomImpl value, $Res Function(_$RateRoomImpl) then) =
      __$$RateRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rateKey});
}

/// @nodoc
class __$$RateRoomImplCopyWithImpl<$Res>
    extends _$RateRoomCopyWithImpl<$Res, _$RateRoomImpl>
    implements _$$RateRoomImplCopyWith<$Res> {
  __$$RateRoomImplCopyWithImpl(
      _$RateRoomImpl _value, $Res Function(_$RateRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
  }) {
    return _then(_$RateRoomImpl(
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateRoomImpl implements _RateRoom {
  _$RateRoomImpl({this.rateKey});

  factory _$RateRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateRoomImplFromJson(json);

  @override
  final String? rateKey;

  @override
  String toString() {
    return 'RateRoom(rateKey: $rateKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateRoomImpl &&
            (identical(other.rateKey, rateKey) || other.rateKey == rateKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rateKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RateRoomImplCopyWith<_$RateRoomImpl> get copyWith =>
      __$$RateRoomImplCopyWithImpl<_$RateRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateRoomImplToJson(
      this,
    );
  }
}

abstract class _RateRoom implements RateRoom {
  factory _RateRoom({final String? rateKey}) = _$RateRoomImpl;

  factory _RateRoom.fromJson(Map<String, dynamic> json) =
      _$RateRoomImpl.fromJson;

  @override
  String? get rateKey;
  @override
  @JsonKey(ignore: true)
  _$$RateRoomImplCopyWith<_$RateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
