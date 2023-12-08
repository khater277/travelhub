// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hotels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotels _$HotelsFromJson(Map<String, dynamic> json) {
  return _Hotels.fromJson(json);
}

/// @nodoc
mixin _$Hotels {
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelsCopyWith<Hotels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelsCopyWith<$Res> {
  factory $HotelsCopyWith(Hotels value, $Res Function(Hotels) then) =
      _$HotelsCopyWithImpl<$Res, Hotels>;
  @useResult
  $Res call({@JsonKey(name: 'hotel') List<int>? availabilityBodyHotel});
}

/// @nodoc
class _$HotelsCopyWithImpl<$Res, $Val extends Hotels>
    implements $HotelsCopyWith<$Res> {
  _$HotelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availabilityBodyHotel = freezed,
  }) {
    return _then(_value.copyWith(
      availabilityBodyHotel: freezed == availabilityBodyHotel
          ? _value.availabilityBodyHotel
          : availabilityBodyHotel // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotelsImplCopyWith<$Res> implements $HotelsCopyWith<$Res> {
  factory _$$HotelsImplCopyWith(
          _$HotelsImpl value, $Res Function(_$HotelsImpl) then) =
      __$$HotelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'hotel') List<int>? availabilityBodyHotel});
}

/// @nodoc
class __$$HotelsImplCopyWithImpl<$Res>
    extends _$HotelsCopyWithImpl<$Res, _$HotelsImpl>
    implements _$$HotelsImplCopyWith<$Res> {
  __$$HotelsImplCopyWithImpl(
      _$HotelsImpl _value, $Res Function(_$HotelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availabilityBodyHotel = freezed,
  }) {
    return _then(_$HotelsImpl(
      availabilityBodyHotel: freezed == availabilityBodyHotel
          ? _value._availabilityBodyHotel
          : availabilityBodyHotel // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelsImpl implements _Hotels {
  _$HotelsImpl({@JsonKey(name: 'hotel') final List<int>? availabilityBodyHotel})
      : _availabilityBodyHotel = availabilityBodyHotel;

  factory _$HotelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelsImplFromJson(json);

  final List<int>? _availabilityBodyHotel;
  @override
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel {
    final value = _availabilityBodyHotel;
    if (value == null) return null;
    if (_availabilityBodyHotel is EqualUnmodifiableListView)
      return _availabilityBodyHotel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hotels(availabilityBodyHotel: $availabilityBodyHotel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelsImpl &&
            const DeepCollectionEquality()
                .equals(other._availabilityBodyHotel, _availabilityBodyHotel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_availabilityBodyHotel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelsImplCopyWith<_$HotelsImpl> get copyWith =>
      __$$HotelsImplCopyWithImpl<_$HotelsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelsImplToJson(
      this,
    );
  }
}

abstract class _Hotels implements Hotels {
  factory _Hotels(
          {@JsonKey(name: 'hotel') final List<int>? availabilityBodyHotel}) =
      _$HotelsImpl;

  factory _Hotels.fromJson(Map<String, dynamic> json) = _$HotelsImpl.fromJson;

  @override
  @JsonKey(name: 'hotel')
  List<int>? get availabilityBodyHotel;
  @override
  @JsonKey(ignore: true)
  _$$HotelsImplCopyWith<_$HotelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
