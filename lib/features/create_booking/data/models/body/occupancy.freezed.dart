// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'occupancy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Occupancy _$OccupancyFromJson(Map<String, dynamic> json) {
  return _Occupancy.fromJson(json);
}

/// @nodoc
mixin _$Occupancy {
  int? get rooms => throw _privateConstructorUsedError;
  int? get adults => throw _privateConstructorUsedError;
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OccupancyCopyWith<Occupancy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OccupancyCopyWith<$Res> {
  factory $OccupancyCopyWith(Occupancy value, $Res Function(Occupancy) then) =
      _$OccupancyCopyWithImpl<$Res, Occupancy>;
  @useResult
  $Res call({int? rooms, int? adults, int? children});
}

/// @nodoc
class _$OccupancyCopyWithImpl<$Res, $Val extends Occupancy>
    implements $OccupancyCopyWith<$Res> {
  _$OccupancyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: freezed == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OccupancyImplCopyWith<$Res>
    implements $OccupancyCopyWith<$Res> {
  factory _$$OccupancyImplCopyWith(
          _$OccupancyImpl value, $Res Function(_$OccupancyImpl) then) =
      __$$OccupancyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? rooms, int? adults, int? children});
}

/// @nodoc
class __$$OccupancyImplCopyWithImpl<$Res>
    extends _$OccupancyCopyWithImpl<$Res, _$OccupancyImpl>
    implements _$$OccupancyImplCopyWith<$Res> {
  __$$OccupancyImplCopyWithImpl(
      _$OccupancyImpl _value, $Res Function(_$OccupancyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_$OccupancyImpl(
      rooms: freezed == rooms
          ? _value.rooms
          : rooms // ignore: cast_nullable_to_non_nullable
              as int?,
      adults: freezed == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OccupancyImpl implements _Occupancy {
  _$OccupancyImpl({this.rooms, this.adults, this.children});

  factory _$OccupancyImpl.fromJson(Map<String, dynamic> json) =>
      _$$OccupancyImplFromJson(json);

  @override
  final int? rooms;
  @override
  final int? adults;
  @override
  final int? children;

  @override
  String toString() {
    return 'Occupancy(rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OccupancyImpl &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rooms, adults, children);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OccupancyImplCopyWith<_$OccupancyImpl> get copyWith =>
      __$$OccupancyImplCopyWithImpl<_$OccupancyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OccupancyImplToJson(
      this,
    );
  }
}

abstract class _Occupancy implements Occupancy {
  factory _Occupancy(
      {final int? rooms,
      final int? adults,
      final int? children}) = _$OccupancyImpl;

  factory _Occupancy.fromJson(Map<String, dynamic> json) =
      _$OccupancyImpl.fromJson;

  @override
  int? get rooms;
  @override
  int? get adults;
  @override
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$OccupancyImplCopyWith<_$OccupancyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
