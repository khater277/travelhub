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

AvailableHotels _$AvailableHotelsFromJson(Map<String, dynamic> json) {
  return _AvailableHotels.fromJson(json);
}

/// @nodoc
mixin _$AvailableHotels {
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels =>
      throw _privateConstructorUsedError;
  @HiveField(1)
  String? get checkIn => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get total => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get checkOut => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableHotelsCopyWith<AvailableHotels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableHotelsCopyWith<$Res> {
  factory $AvailableHotelsCopyWith(
          AvailableHotels value, $Res Function(AvailableHotels) then) =
      _$AvailableHotelsCopyWithImpl<$Res, AvailableHotels>;
  @useResult
  $Res call(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
      List<AvailableHotel>? availableHotels,
      @HiveField(1) String? checkIn,
      @HiveField(2) int? total,
      @HiveField(3) String? checkOut});
}

/// @nodoc
class _$AvailableHotelsCopyWithImpl<$Res, $Val extends AvailableHotels>
    implements $AvailableHotelsCopyWith<$Res> {
  _$AvailableHotelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableHotels = freezed,
    Object? checkIn = freezed,
    Object? total = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_value.copyWith(
      availableHotels: freezed == availableHotels
          ? _value.availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as List<AvailableHotel>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableHotelsImplCopyWith<$Res>
    implements $AvailableHotelsCopyWith<$Res> {
  factory _$$AvailableHotelsImplCopyWith(_$AvailableHotelsImpl value,
          $Res Function(_$AvailableHotelsImpl) then) =
      __$$AvailableHotelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
      List<AvailableHotel>? availableHotels,
      @HiveField(1) String? checkIn,
      @HiveField(2) int? total,
      @HiveField(3) String? checkOut});
}

/// @nodoc
class __$$AvailableHotelsImplCopyWithImpl<$Res>
    extends _$AvailableHotelsCopyWithImpl<$Res, _$AvailableHotelsImpl>
    implements _$$AvailableHotelsImplCopyWith<$Res> {
  __$$AvailableHotelsImplCopyWithImpl(
      _$AvailableHotelsImpl _value, $Res Function(_$AvailableHotelsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableHotels = freezed,
    Object? checkIn = freezed,
    Object? total = freezed,
    Object? checkOut = freezed,
  }) {
    return _then(_$AvailableHotelsImpl(
      availableHotels: freezed == availableHotels
          ? _value._availableHotels
          : availableHotels // ignore: cast_nullable_to_non_nullable
              as List<AvailableHotel>?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableHotelsImpl implements _AvailableHotels {
  _$AvailableHotelsImpl(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
      final List<AvailableHotel>? availableHotels,
      @HiveField(1) this.checkIn,
      @HiveField(2) this.total,
      @HiveField(3) this.checkOut})
      : _availableHotels = availableHotels;

  factory _$AvailableHotelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableHotelsImplFromJson(json);

  final List<AvailableHotel>? _availableHotels;
  @override
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels {
    final value = _availableHotels;
    if (value == null) return null;
    if (_availableHotels is EqualUnmodifiableListView) return _availableHotels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(1)
  final String? checkIn;
  @override
  @HiveField(2)
  final int? total;
  @override
  @HiveField(3)
  final String? checkOut;

  @override
  String toString() {
    return 'AvailableHotels(availableHotels: $availableHotels, checkIn: $checkIn, total: $total, checkOut: $checkOut)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableHotelsImpl &&
            const DeepCollectionEquality()
                .equals(other._availableHotels, _availableHotels) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableHotels),
      checkIn,
      total,
      checkOut);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableHotelsImplCopyWith<_$AvailableHotelsImpl> get copyWith =>
      __$$AvailableHotelsImplCopyWithImpl<_$AvailableHotelsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableHotelsImplToJson(
      this,
    );
  }
}

abstract class _AvailableHotels implements AvailableHotels {
  factory _AvailableHotels(
      {@JsonKey(name: 'hotels')
      @HiveField(0)
      final List<AvailableHotel>? availableHotels,
      @HiveField(1) final String? checkIn,
      @HiveField(2) final int? total,
      @HiveField(3) final String? checkOut}) = _$AvailableHotelsImpl;

  factory _AvailableHotels.fromJson(Map<String, dynamic> json) =
      _$AvailableHotelsImpl.fromJson;

  @override
  @JsonKey(name: 'hotels')
  @HiveField(0)
  List<AvailableHotel>? get availableHotels;
  @override
  @HiveField(1)
  String? get checkIn;
  @override
  @HiveField(2)
  int? get total;
  @override
  @HiveField(3)
  String? get checkOut;
  @override
  @JsonKey(ignore: true)
  _$$AvailableHotelsImplCopyWith<_$AvailableHotelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
