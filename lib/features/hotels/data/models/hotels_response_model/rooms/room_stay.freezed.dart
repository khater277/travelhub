// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'room_stay.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RoomStay _$RoomStayFromJson(Map<String, dynamic> json) {
  return _RoomStay.fromJson(json);
}

/// @nodoc
mixin _$RoomStay {
  @HiveField(0)
  String? get stayType => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get order => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomStayCopyWith<RoomStay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomStayCopyWith<$Res> {
  factory $RoomStayCopyWith(RoomStay value, $Res Function(RoomStay) then) =
      _$RoomStayCopyWithImpl<$Res, RoomStay>;
  @useResult
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class _$RoomStayCopyWithImpl<$Res, $Val extends RoomStay>
    implements $RoomStayCopyWith<$Res> {
  _$RoomStayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_value.copyWith(
      stayType: freezed == stayType
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: freezed == roomStayFacilities
          ? _value.roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomStayImplCopyWith<$Res>
    implements $RoomStayCopyWith<$Res> {
  factory _$$RoomStayImplCopyWith(
          _$RoomStayImpl value, $Res Function(_$RoomStayImpl) then) =
      __$$RoomStayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? stayType,
      @HiveField(1) String? order,
      @HiveField(2) String? description,
      @HiveField(3) List<RoomStayFacility>? roomStayFacilities});
}

/// @nodoc
class __$$RoomStayImplCopyWithImpl<$Res>
    extends _$RoomStayCopyWithImpl<$Res, _$RoomStayImpl>
    implements _$$RoomStayImplCopyWith<$Res> {
  __$$RoomStayImplCopyWithImpl(
      _$RoomStayImpl _value, $Res Function(_$RoomStayImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stayType = freezed,
    Object? order = freezed,
    Object? description = freezed,
    Object? roomStayFacilities = freezed,
  }) {
    return _then(_$RoomStayImpl(
      stayType: freezed == stayType
          ? _value.stayType
          : stayType // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      roomStayFacilities: freezed == roomStayFacilities
          ? _value._roomStayFacilities
          : roomStayFacilities // ignore: cast_nullable_to_non_nullable
              as List<RoomStayFacility>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomStayImpl implements _RoomStay {
  _$RoomStayImpl(
      {@HiveField(0) this.stayType,
      @HiveField(1) this.order,
      @HiveField(2) this.description,
      @HiveField(3) final List<RoomStayFacility>? roomStayFacilities})
      : _roomStayFacilities = roomStayFacilities;

  factory _$RoomStayImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomStayImplFromJson(json);

  @override
  @HiveField(0)
  final String? stayType;
  @override
  @HiveField(1)
  final String? order;
  @override
  @HiveField(2)
  final String? description;
  final List<RoomStayFacility>? _roomStayFacilities;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities {
    final value = _roomStayFacilities;
    if (value == null) return null;
    if (_roomStayFacilities is EqualUnmodifiableListView)
      return _roomStayFacilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RoomStay(stayType: $stayType, order: $order, description: $description, roomStayFacilities: $roomStayFacilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomStayImpl &&
            (identical(other.stayType, stayType) ||
                other.stayType == stayType) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._roomStayFacilities, _roomStayFacilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stayType, order, description,
      const DeepCollectionEquality().hash(_roomStayFacilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomStayImplCopyWith<_$RoomStayImpl> get copyWith =>
      __$$RoomStayImplCopyWithImpl<_$RoomStayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomStayImplToJson(
      this,
    );
  }
}

abstract class _RoomStay implements RoomStay {
  factory _RoomStay(
          {@HiveField(0) final String? stayType,
          @HiveField(1) final String? order,
          @HiveField(2) final String? description,
          @HiveField(3) final List<RoomStayFacility>? roomStayFacilities}) =
      _$RoomStayImpl;

  factory _RoomStay.fromJson(Map<String, dynamic> json) =
      _$RoomStayImpl.fromJson;

  @override
  @HiveField(0)
  String? get stayType;
  @override
  @HiveField(1)
  String? get order;
  @override
  @HiveField(2)
  String? get description;
  @override
  @HiveField(3)
  List<RoomStayFacility>? get roomStayFacilities;
  @override
  @JsonKey(ignore: true)
  _$$RoomStayImplCopyWith<_$RoomStayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
