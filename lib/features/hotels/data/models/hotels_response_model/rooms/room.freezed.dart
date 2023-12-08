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

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  @HiveField(0)
  String? get roomCode => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isParentRoom => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get minPax => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get maxPax => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get maxAdults => throw _privateConstructorUsedError;
  @HiveField(5)
  int? get maxChildren => throw _privateConstructorUsedError;
  @HiveField(6)
  int? get minAdults => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get roomType => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get characteristicCode => throw _privateConstructorUsedError;
  @HiveField(9)
  List<RoomFacility>? get roomFacilities => throw _privateConstructorUsedError;
  @HiveField(10)
  List<RoomStay>? get roomStays => throw _privateConstructorUsedError;
  @JsonKey(name: 'PMSRoomCode')
  String? get pmsRoomCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {@HiveField(0) String? roomCode,
      @HiveField(1) bool? isParentRoom,
      @HiveField(2) int? minPax,
      @HiveField(3) int? maxPax,
      @HiveField(4) int? maxAdults,
      @HiveField(5) int? maxChildren,
      @HiveField(6) int? minAdults,
      @HiveField(7) String? roomType,
      @HiveField(8) String? characteristicCode,
      @HiveField(9) List<RoomFacility>? roomFacilities,
      @HiveField(10) List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') String? pmsRoomCode});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_value.copyWith(
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: freezed == isParentRoom
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: freezed == minPax
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: freezed == maxPax
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: freezed == maxAdults
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: freezed == maxChildren
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: freezed == minAdults
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: freezed == characteristicCode
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: freezed == roomFacilities
          ? _value.roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: freezed == roomStays
          ? _value.roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: freezed == pmsRoomCode
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? roomCode,
      @HiveField(1) bool? isParentRoom,
      @HiveField(2) int? minPax,
      @HiveField(3) int? maxPax,
      @HiveField(4) int? maxAdults,
      @HiveField(5) int? maxChildren,
      @HiveField(6) int? minAdults,
      @HiveField(7) String? roomType,
      @HiveField(8) String? characteristicCode,
      @HiveField(9) List<RoomFacility>? roomFacilities,
      @HiveField(10) List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') String? pmsRoomCode});
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomCode = freezed,
    Object? isParentRoom = freezed,
    Object? minPax = freezed,
    Object? maxPax = freezed,
    Object? maxAdults = freezed,
    Object? maxChildren = freezed,
    Object? minAdults = freezed,
    Object? roomType = freezed,
    Object? characteristicCode = freezed,
    Object? roomFacilities = freezed,
    Object? roomStays = freezed,
    Object? pmsRoomCode = freezed,
  }) {
    return _then(_$RoomImpl(
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isParentRoom: freezed == isParentRoom
          ? _value.isParentRoom
          : isParentRoom // ignore: cast_nullable_to_non_nullable
              as bool?,
      minPax: freezed == minPax
          ? _value.minPax
          : minPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPax: freezed == maxPax
          ? _value.maxPax
          : maxPax // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAdults: freezed == maxAdults
          ? _value.maxAdults
          : maxAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      maxChildren: freezed == maxChildren
          ? _value.maxChildren
          : maxChildren // ignore: cast_nullable_to_non_nullable
              as int?,
      minAdults: freezed == minAdults
          ? _value.minAdults
          : minAdults // ignore: cast_nullable_to_non_nullable
              as int?,
      roomType: freezed == roomType
          ? _value.roomType
          : roomType // ignore: cast_nullable_to_non_nullable
              as String?,
      characteristicCode: freezed == characteristicCode
          ? _value.characteristicCode
          : characteristicCode // ignore: cast_nullable_to_non_nullable
              as String?,
      roomFacilities: freezed == roomFacilities
          ? _value._roomFacilities
          : roomFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomFacility>?,
      roomStays: freezed == roomStays
          ? _value._roomStays
          : roomStays // ignore: cast_nullable_to_non_nullable
              as List<RoomStay>?,
      pmsRoomCode: freezed == pmsRoomCode
          ? _value.pmsRoomCode
          : pmsRoomCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImpl implements _Room {
  _$RoomImpl(
      {@HiveField(0) this.roomCode,
      @HiveField(1) this.isParentRoom,
      @HiveField(2) this.minPax,
      @HiveField(3) this.maxPax,
      @HiveField(4) this.maxAdults,
      @HiveField(5) this.maxChildren,
      @HiveField(6) this.minAdults,
      @HiveField(7) this.roomType,
      @HiveField(8) this.characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') this.pmsRoomCode})
      : _roomFacilities = roomFacilities,
        _roomStays = roomStays;

  factory _$RoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImplFromJson(json);

  @override
  @HiveField(0)
  final String? roomCode;
  @override
  @HiveField(1)
  final bool? isParentRoom;
  @override
  @HiveField(2)
  final int? minPax;
  @override
  @HiveField(3)
  final int? maxPax;
  @override
  @HiveField(4)
  final int? maxAdults;
  @override
  @HiveField(5)
  final int? maxChildren;
  @override
  @HiveField(6)
  final int? minAdults;
  @override
  @HiveField(7)
  final String? roomType;
  @override
  @HiveField(8)
  final String? characteristicCode;
  final List<RoomFacility>? _roomFacilities;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities {
    final value = _roomFacilities;
    if (value == null) return null;
    if (_roomFacilities is EqualUnmodifiableListView) return _roomFacilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RoomStay>? _roomStays;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays {
    final value = _roomStays;
    if (value == null) return null;
    if (_roomStays is EqualUnmodifiableListView) return _roomStays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'PMSRoomCode')
  final String? pmsRoomCode;

  @override
  String toString() {
    return 'Room(roomCode: $roomCode, isParentRoom: $isParentRoom, minPax: $minPax, maxPax: $maxPax, maxAdults: $maxAdults, maxChildren: $maxChildren, minAdults: $minAdults, roomType: $roomType, characteristicCode: $characteristicCode, roomFacilities: $roomFacilities, roomStays: $roomStays, pmsRoomCode: $pmsRoomCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.roomCode, roomCode) ||
                other.roomCode == roomCode) &&
            (identical(other.isParentRoom, isParentRoom) ||
                other.isParentRoom == isParentRoom) &&
            (identical(other.minPax, minPax) || other.minPax == minPax) &&
            (identical(other.maxPax, maxPax) || other.maxPax == maxPax) &&
            (identical(other.maxAdults, maxAdults) ||
                other.maxAdults == maxAdults) &&
            (identical(other.maxChildren, maxChildren) ||
                other.maxChildren == maxChildren) &&
            (identical(other.minAdults, minAdults) ||
                other.minAdults == minAdults) &&
            (identical(other.roomType, roomType) ||
                other.roomType == roomType) &&
            (identical(other.characteristicCode, characteristicCode) ||
                other.characteristicCode == characteristicCode) &&
            const DeepCollectionEquality()
                .equals(other._roomFacilities, _roomFacilities) &&
            const DeepCollectionEquality()
                .equals(other._roomStays, _roomStays) &&
            (identical(other.pmsRoomCode, pmsRoomCode) ||
                other.pmsRoomCode == pmsRoomCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomCode,
      isParentRoom,
      minPax,
      maxPax,
      maxAdults,
      maxChildren,
      minAdults,
      roomType,
      characteristicCode,
      const DeepCollectionEquality().hash(_roomFacilities),
      const DeepCollectionEquality().hash(_roomStays),
      pmsRoomCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImplToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  factory _Room(
      {@HiveField(0) final String? roomCode,
      @HiveField(1) final bool? isParentRoom,
      @HiveField(2) final int? minPax,
      @HiveField(3) final int? maxPax,
      @HiveField(4) final int? maxAdults,
      @HiveField(5) final int? maxChildren,
      @HiveField(6) final int? minAdults,
      @HiveField(7) final String? roomType,
      @HiveField(8) final String? characteristicCode,
      @HiveField(9) final List<RoomFacility>? roomFacilities,
      @HiveField(10) final List<RoomStay>? roomStays,
      @JsonKey(name: 'PMSRoomCode') final String? pmsRoomCode}) = _$RoomImpl;

  factory _Room.fromJson(Map<String, dynamic> json) = _$RoomImpl.fromJson;

  @override
  @HiveField(0)
  String? get roomCode;
  @override
  @HiveField(1)
  bool? get isParentRoom;
  @override
  @HiveField(2)
  int? get minPax;
  @override
  @HiveField(3)
  int? get maxPax;
  @override
  @HiveField(4)
  int? get maxAdults;
  @override
  @HiveField(5)
  int? get maxChildren;
  @override
  @HiveField(6)
  int? get minAdults;
  @override
  @HiveField(7)
  String? get roomType;
  @override
  @HiveField(8)
  String? get characteristicCode;
  @override
  @HiveField(9)
  List<RoomFacility>? get roomFacilities;
  @override
  @HiveField(10)
  List<RoomStay>? get roomStays;
  @override
  @JsonKey(name: 'PMSRoomCode')
  String? get pmsRoomCode;
  @override
  @JsonKey(ignore: true)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
