// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HotelsResponseModel _$HotelsResponseModelFromJson(Map<String, dynamic> json) {
  return _HotelsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$HotelsResponseModel {
  @HiveField(0)
  int? get from => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get to => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get total => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Hotel>? get hotels => throw _privateConstructorUsedError;
  @HiveField(4)
  Rooms? get rooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsResponseModelCopyWith<HotelsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsResponseModelCopyWith<$Res> {
  factory $HotelsResponseModelCopyWith(
          HotelsResponseModel value, $Res Function(HotelsResponseModel) then) =
      _$HotelsResponseModelCopyWithImpl<$Res, HotelsResponseModel>;
  @useResult
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      @HiveField(3) List<Hotel>? hotels,
      @HiveField(4) Rooms? rooms});

  $RoomsCopyWith<$Res>? get rooms;
}

/// @nodoc
class _$HotelsResponseModelCopyWithImpl<$Res, $Val extends HotelsResponseModel>
    implements $HotelsResponseModelCopyWith<$Res> {
  _$HotelsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
    Object? rooms = freezed,
  }) {
    return _then(_value.copyWith(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: freezed == hotels
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomsCopyWith<$Res>? get rooms {
    if (_value.rooms == null) {
      return null;
    }

    return $RoomsCopyWith<$Res>(_value.rooms!, (value) {
      return _then(_value.copyWith(rooms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelsResponseModelImplCopyWith<$Res>
    implements $HotelsResponseModelCopyWith<$Res> {
  factory _$$HotelsResponseModelImplCopyWith(_$HotelsResponseModelImpl value,
          $Res Function(_$HotelsResponseModelImpl) then) =
      __$$HotelsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? from,
      @HiveField(1) int? to,
      @HiveField(2) int? total,
      @HiveField(3) List<Hotel>? hotels,
      @HiveField(4) Rooms? rooms});

  @override
  $RoomsCopyWith<$Res>? get rooms;
}

/// @nodoc
class __$$HotelsResponseModelImplCopyWithImpl<$Res>
    extends _$HotelsResponseModelCopyWithImpl<$Res, _$HotelsResponseModelImpl>
    implements _$$HotelsResponseModelImplCopyWith<$Res> {
  __$$HotelsResponseModelImplCopyWithImpl(_$HotelsResponseModelImpl _value,
      $Res Function(_$HotelsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? total = freezed,
    Object? hotels = freezed,
    Object? rooms = freezed,
  }) {
    return _then(_$HotelsResponseModelImpl(
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      hotels: freezed == hotels
          ? _value._hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as Rooms?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsResponseModelImpl implements _HotelsResponseModel {
  _$HotelsResponseModelImpl(
      {@HiveField(0) this.from,
      @HiveField(1) this.to,
      @HiveField(2) this.total,
      @HiveField(3) final List<Hotel>? hotels,
      @HiveField(4) this.rooms})
      : _hotels = hotels;

  factory _$HotelsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsResponseModelImplFromJson(json);

  @override
  @HiveField(0)
  final int? from;
  @override
  @HiveField(1)
  final int? to;
  @override
  @HiveField(2)
  final int? total;
  final List<Hotel>? _hotels;
  @override
  @HiveField(3)
  List<Hotel>? get hotels {
    final value = _hotels;
    if (value == null) return null;
    if (_hotels is EqualUnmodifiableListView) return _hotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(4)
  final Rooms? rooms;

  @override
  String toString() {
    return 'HotelsResponseModel(from: $from, to: $to, total: $total, hotels: $hotels, rooms: $rooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsResponseModelImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._hotels, _hotels) &&
            (identical(other.rooms, rooms) || other.rooms == rooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, total,
      const DeepCollectionEquality().hash(_hotels), rooms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsResponseModelImplCopyWith<_$HotelsResponseModelImpl> get copyWith =>
      __$$HotelsResponseModelImplCopyWithImpl<_$HotelsResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _HotelsResponseModel implements HotelsResponseModel {
  factory _HotelsResponseModel(
      {@HiveField(0) final int? from,
      @HiveField(1) final int? to,
      @HiveField(2) final int? total,
      @HiveField(3) final List<Hotel>? hotels,
      @HiveField(4) final Rooms? rooms}) = _$HotelsResponseModelImpl;

  factory _HotelsResponseModel.fromJson(Map<String, dynamic> json) =
      _$HotelsResponseModelImpl.fromJson;

  @override
  @HiveField(0)
  int? get from;
  @override
  @HiveField(1)
  int? get to;
  @override
  @HiveField(2)
  int? get total;
  @override
  @HiveField(3)
  List<Hotel>? get hotels;
  @override
  @HiveField(4)
  Rooms? get rooms;
  @override
  @JsonKey(ignore: true)
  _$$HotelsResponseModelImplCopyWith<_$HotelsResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
