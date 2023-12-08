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

BookingRoom _$BookingRoomFromJson(Map<String, dynamic> json) {
  return _BookingRoom.fromJson(json);
}

/// @nodoc
mixin _$BookingRoom {
  String? get rateKey => throw _privateConstructorUsedError;
  List<Pax>? get paxes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRoomCopyWith<BookingRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRoomCopyWith<$Res> {
  factory $BookingRoomCopyWith(
          BookingRoom value, $Res Function(BookingRoom) then) =
      _$BookingRoomCopyWithImpl<$Res, BookingRoom>;
  @useResult
  $Res call({String? rateKey, List<Pax>? paxes});
}

/// @nodoc
class _$BookingRoomCopyWithImpl<$Res, $Val extends BookingRoom>
    implements $BookingRoomCopyWith<$Res> {
  _$BookingRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
    Object? paxes = freezed,
  }) {
    return _then(_value.copyWith(
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: freezed == paxes
          ? _value.paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingRoomImplCopyWith<$Res>
    implements $BookingRoomCopyWith<$Res> {
  factory _$$BookingRoomImplCopyWith(
          _$BookingRoomImpl value, $Res Function(_$BookingRoomImpl) then) =
      __$$BookingRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? rateKey, List<Pax>? paxes});
}

/// @nodoc
class __$$BookingRoomImplCopyWithImpl<$Res>
    extends _$BookingRoomCopyWithImpl<$Res, _$BookingRoomImpl>
    implements _$$BookingRoomImplCopyWith<$Res> {
  __$$BookingRoomImplCopyWithImpl(
      _$BookingRoomImpl _value, $Res Function(_$BookingRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
    Object? paxes = freezed,
  }) {
    return _then(_$BookingRoomImpl(
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: freezed == paxes
          ? _value._paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingRoomImpl implements _BookingRoom {
  _$BookingRoomImpl({this.rateKey, final List<Pax>? paxes}) : _paxes = paxes;

  factory _$BookingRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRoomImplFromJson(json);

  @override
  final String? rateKey;
  final List<Pax>? _paxes;
  @override
  List<Pax>? get paxes {
    final value = _paxes;
    if (value == null) return null;
    if (_paxes is EqualUnmodifiableListView) return _paxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingRoom(rateKey: $rateKey, paxes: $paxes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRoomImpl &&
            (identical(other.rateKey, rateKey) || other.rateKey == rateKey) &&
            const DeepCollectionEquality().equals(other._paxes, _paxes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rateKey, const DeepCollectionEquality().hash(_paxes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRoomImplCopyWith<_$BookingRoomImpl> get copyWith =>
      __$$BookingRoomImplCopyWithImpl<_$BookingRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingRoomImplToJson(
      this,
    );
  }
}

abstract class _BookingRoom implements BookingRoom {
  factory _BookingRoom({final String? rateKey, final List<Pax>? paxes}) =
      _$BookingRoomImpl;

  factory _BookingRoom.fromJson(Map<String, dynamic> json) =
      _$BookingRoomImpl.fromJson;

  @override
  String? get rateKey;
  @override
  List<Pax>? get paxes;
  @override
  @JsonKey(ignore: true)
  _$$BookingRoomImplCopyWith<_$BookingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
