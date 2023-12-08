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
  @HiveField(0)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get id => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Pax>? get paxes => throw _privateConstructorUsedError;
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates => throw _privateConstructorUsedError;

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
  $Res call(
      {@HiveField(0) String? status,
      @HiveField(1) int? id,
      @HiveField(2) String? code,
      @HiveField(3) String? name,
      @HiveField(4) List<Pax>? paxes,
      @JsonKey(name: 'rates') @HiveField(5) List<BookingRate>? bookingRates});
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
    Object? status = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? paxes = freezed,
    Object? bookingRates = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: freezed == paxes
          ? _value.paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
      bookingRates: freezed == bookingRates
          ? _value.bookingRates
          : bookingRates // ignore: cast_nullable_to_non_nullable
              as List<BookingRate>?,
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
  $Res call(
      {@HiveField(0) String? status,
      @HiveField(1) int? id,
      @HiveField(2) String? code,
      @HiveField(3) String? name,
      @HiveField(4) List<Pax>? paxes,
      @JsonKey(name: 'rates') @HiveField(5) List<BookingRate>? bookingRates});
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
    Object? status = freezed,
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? paxes = freezed,
    Object? bookingRates = freezed,
  }) {
    return _then(_$BookingRoomImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      paxes: freezed == paxes
          ? _value._paxes
          : paxes // ignore: cast_nullable_to_non_nullable
              as List<Pax>?,
      bookingRates: freezed == bookingRates
          ? _value._bookingRates
          : bookingRates // ignore: cast_nullable_to_non_nullable
              as List<BookingRate>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingRoomImpl implements _BookingRoom {
  _$BookingRoomImpl(
      {@HiveField(0) this.status,
      @HiveField(1) this.id,
      @HiveField(2) this.code,
      @HiveField(3) this.name,
      @HiveField(4) final List<Pax>? paxes,
      @JsonKey(name: 'rates')
      @HiveField(5)
      final List<BookingRate>? bookingRates})
      : _paxes = paxes,
        _bookingRates = bookingRates;

  factory _$BookingRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRoomImplFromJson(json);

  @override
  @HiveField(0)
  final String? status;
  @override
  @HiveField(1)
  final int? id;
  @override
  @HiveField(2)
  final String? code;
  @override
  @HiveField(3)
  final String? name;
  final List<Pax>? _paxes;
  @override
  @HiveField(4)
  List<Pax>? get paxes {
    final value = _paxes;
    if (value == null) return null;
    if (_paxes is EqualUnmodifiableListView) return _paxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BookingRate>? _bookingRates;
  @override
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates {
    final value = _bookingRates;
    if (value == null) return null;
    if (_bookingRates is EqualUnmodifiableListView) return _bookingRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookingRoom(status: $status, id: $id, code: $code, name: $name, paxes: $paxes, bookingRates: $bookingRates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRoomImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._paxes, _paxes) &&
            const DeepCollectionEquality()
                .equals(other._bookingRates, _bookingRates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      id,
      code,
      name,
      const DeepCollectionEquality().hash(_paxes),
      const DeepCollectionEquality().hash(_bookingRates));

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
  factory _BookingRoom(
      {@HiveField(0) final String? status,
      @HiveField(1) final int? id,
      @HiveField(2) final String? code,
      @HiveField(3) final String? name,
      @HiveField(4) final List<Pax>? paxes,
      @JsonKey(name: 'rates')
      @HiveField(5)
      final List<BookingRate>? bookingRates}) = _$BookingRoomImpl;

  factory _BookingRoom.fromJson(Map<String, dynamic> json) =
      _$BookingRoomImpl.fromJson;

  @override
  @HiveField(0)
  String? get status;
  @override
  @HiveField(1)
  int? get id;
  @override
  @HiveField(2)
  String? get code;
  @override
  @HiveField(3)
  String? get name;
  @override
  @HiveField(4)
  List<Pax>? get paxes;
  @override
  @JsonKey(name: 'rates')
  @HiveField(5)
  List<BookingRate>? get bookingRates;
  @override
  @JsonKey(ignore: true)
  _$$BookingRoomImplCopyWith<_$BookingRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
