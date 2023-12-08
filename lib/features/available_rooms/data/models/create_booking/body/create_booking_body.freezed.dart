// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_booking_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateBookingBody _$CreateBookingBodyFromJson(Map<String, dynamic> json) {
  return _CreateBookingBody.fromJson(json);
}

/// @nodoc
mixin _$CreateBookingBody {
  Holder? get holder => throw _privateConstructorUsedError;
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms => throw _privateConstructorUsedError;
  String? get clientReference => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  int? get tolerance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBookingBodyCopyWith<CreateBookingBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBookingBodyCopyWith<$Res> {
  factory $CreateBookingBodyCopyWith(
          CreateBookingBody value, $Res Function(CreateBookingBody) then) =
      _$CreateBookingBodyCopyWithImpl<$Res, CreateBookingBody>;
  @useResult
  $Res call(
      {Holder? holder,
      @JsonKey(name: 'rooms') List<BookingRoom>? bookingRooms,
      String? clientReference,
      String? remark,
      int? tolerance});

  $HolderCopyWith<$Res>? get holder;
}

/// @nodoc
class _$CreateBookingBodyCopyWithImpl<$Res, $Val extends CreateBookingBody>
    implements $CreateBookingBodyCopyWith<$Res> {
  _$CreateBookingBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holder = freezed,
    Object? bookingRooms = freezed,
    Object? clientReference = freezed,
    Object? remark = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_value.copyWith(
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingRooms: freezed == bookingRooms
          ? _value.bookingRooms
          : bookingRooms // ignore: cast_nullable_to_non_nullable
              as List<BookingRoom>?,
      clientReference: freezed == clientReference
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      tolerance: freezed == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HolderCopyWith<$Res>? get holder {
    if (_value.holder == null) {
      return null;
    }

    return $HolderCopyWith<$Res>(_value.holder!, (value) {
      return _then(_value.copyWith(holder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateBookingBodyImplCopyWith<$Res>
    implements $CreateBookingBodyCopyWith<$Res> {
  factory _$$CreateBookingBodyImplCopyWith(_$CreateBookingBodyImpl value,
          $Res Function(_$CreateBookingBodyImpl) then) =
      __$$CreateBookingBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Holder? holder,
      @JsonKey(name: 'rooms') List<BookingRoom>? bookingRooms,
      String? clientReference,
      String? remark,
      int? tolerance});

  @override
  $HolderCopyWith<$Res>? get holder;
}

/// @nodoc
class __$$CreateBookingBodyImplCopyWithImpl<$Res>
    extends _$CreateBookingBodyCopyWithImpl<$Res, _$CreateBookingBodyImpl>
    implements _$$CreateBookingBodyImplCopyWith<$Res> {
  __$$CreateBookingBodyImplCopyWithImpl(_$CreateBookingBodyImpl _value,
      $Res Function(_$CreateBookingBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? holder = freezed,
    Object? bookingRooms = freezed,
    Object? clientReference = freezed,
    Object? remark = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_$CreateBookingBodyImpl(
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingRooms: freezed == bookingRooms
          ? _value._bookingRooms
          : bookingRooms // ignore: cast_nullable_to_non_nullable
              as List<BookingRoom>?,
      clientReference: freezed == clientReference
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      tolerance: freezed == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateBookingBodyImpl implements _CreateBookingBody {
  _$CreateBookingBodyImpl(
      {this.holder,
      @JsonKey(name: 'rooms') final List<BookingRoom>? bookingRooms,
      this.clientReference,
      this.remark,
      this.tolerance})
      : _bookingRooms = bookingRooms;

  factory _$CreateBookingBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBookingBodyImplFromJson(json);

  @override
  final Holder? holder;
  final List<BookingRoom>? _bookingRooms;
  @override
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms {
    final value = _bookingRooms;
    if (value == null) return null;
    if (_bookingRooms is EqualUnmodifiableListView) return _bookingRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? clientReference;
  @override
  final String? remark;
  @override
  final int? tolerance;

  @override
  String toString() {
    return 'CreateBookingBody(holder: $holder, bookingRooms: $bookingRooms, clientReference: $clientReference, remark: $remark, tolerance: $tolerance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBookingBodyImpl &&
            (identical(other.holder, holder) || other.holder == holder) &&
            const DeepCollectionEquality()
                .equals(other._bookingRooms, _bookingRooms) &&
            (identical(other.clientReference, clientReference) ||
                other.clientReference == clientReference) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      holder,
      const DeepCollectionEquality().hash(_bookingRooms),
      clientReference,
      remark,
      tolerance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingBodyImplCopyWith<_$CreateBookingBodyImpl> get copyWith =>
      __$$CreateBookingBodyImplCopyWithImpl<_$CreateBookingBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBookingBodyImplToJson(
      this,
    );
  }
}

abstract class _CreateBookingBody implements CreateBookingBody {
  factory _CreateBookingBody(
      {final Holder? holder,
      @JsonKey(name: 'rooms') final List<BookingRoom>? bookingRooms,
      final String? clientReference,
      final String? remark,
      final int? tolerance}) = _$CreateBookingBodyImpl;

  factory _CreateBookingBody.fromJson(Map<String, dynamic> json) =
      _$CreateBookingBodyImpl.fromJson;

  @override
  Holder? get holder;
  @override
  @JsonKey(name: 'rooms')
  List<BookingRoom>? get bookingRooms;
  @override
  String? get clientReference;
  @override
  String? get remark;
  @override
  int? get tolerance;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingBodyImplCopyWith<_$CreateBookingBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
