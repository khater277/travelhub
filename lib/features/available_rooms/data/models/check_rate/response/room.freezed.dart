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
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Rate>? get rates => throw _privateConstructorUsedError;

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
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? name,
      @HiveField(2) List<Rate>? rates});
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
    Object? code = freezed,
    Object? name = freezed,
    Object? rates = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value.rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>?,
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
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? name,
      @HiveField(2) List<Rate>? rates});
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
    Object? code = freezed,
    Object? name = freezed,
    Object? rates = freezed,
  }) {
    return _then(_$RateRoomImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rates: freezed == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<Rate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RateRoomImpl implements _RateRoom {
  _$RateRoomImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.name,
      @HiveField(2) final List<Rate>? rates})
      : _rates = rates;

  factory _$RateRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateRoomImplFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final String? name;
  final List<Rate>? _rates;
  @override
  @HiveField(2)
  List<Rate>? get rates {
    final value = _rates;
    if (value == null) return null;
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RateRoom(code: $code, name: $name, rates: $rates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateRoomImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, name, const DeepCollectionEquality().hash(_rates));

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
  factory _RateRoom(
      {@HiveField(0) final String? code,
      @HiveField(1) final String? name,
      @HiveField(2) final List<Rate>? rates}) = _$RateRoomImpl;

  factory _RateRoom.fromJson(Map<String, dynamic> json) =
      _$RateRoomImpl.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  List<Rate>? get rates;
  @override
  @JsonKey(ignore: true)
  _$$RateRoomImplCopyWith<_$RateRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
