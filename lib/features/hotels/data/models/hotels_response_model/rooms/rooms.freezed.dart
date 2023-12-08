// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rooms _$RoomsFromJson(Map<String, dynamic> json) {
  return _Rooms.fromJson(json);
}

/// @nodoc
mixin _$Rooms {
  @HiveField(0)
  List<Room>? get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomsCopyWith<Rooms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomsCopyWith<$Res> {
  factory $RoomsCopyWith(Rooms value, $Res Function(Rooms) then) =
      _$RoomsCopyWithImpl<$Res, Rooms>;
  @useResult
  $Res call({@HiveField(0) List<Room>? rooms});
}

/// @nodoc
class _$RoomsCopyWithImpl<$Res, $Val extends Rooms>
    implements $RoomsCopyWith<$Res> {
  _$RoomsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomsImplCopyWith<$Res> implements $RoomsCopyWith<$Res> {
  factory _$$RoomsImplCopyWith(
          _$RoomsImpl value, $Res Function(_$RoomsImpl) then) =
      __$$RoomsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<Room>? rooms});
}

/// @nodoc
class __$$RoomsImplCopyWithImpl<$Res>
    extends _$RoomsCopyWithImpl<$Res, _$RoomsImpl>
    implements _$$RoomsImplCopyWith<$Res> {
  __$$RoomsImplCopyWithImpl(
      _$RoomsImpl _value, $Res Function(_$RoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
  }) {
    return _then(_$RoomsImpl(
      rooms: freezed == rooms
          ? _value._rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as List<Room>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomsImpl implements _Rooms {
  _$RoomsImpl({@HiveField(0) final List<Room>? rooms}) : _rooms = rooms;

  factory _$RoomsImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomsImplFromJson(json);

  final List<Room>? _rooms;
  @override
  @HiveField(0)
  List<Room>? get rooms {
    final value = _rooms;
    if (value == null) return null;
    if (_rooms is EqualUnmodifiableListView) return _rooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Rooms(rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomsImpl &&
            const DeepCollectionEquality().equals(other._rooms, _rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      __$$RoomsImplCopyWithImpl<_$RoomsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomsImplToJson(
      this,
    );
  }
}

abstract class _Rooms implements Rooms {
  factory _Rooms({@HiveField(0) final List<Room>? rooms}) = _$RoomsImpl;

  factory _Rooms.fromJson(Map<String, dynamic> json) = _$RoomsImpl.fromJson;

  @override
  @HiveField(0)
  List<Room>? get rooms;
  @override
  @JsonKey(ignore: true)
  _$$RoomsImplCopyWith<_$RoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
