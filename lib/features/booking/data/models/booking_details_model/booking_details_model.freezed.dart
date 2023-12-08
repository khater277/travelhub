// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingDetailsModel _$BookingDetailsModelFromJson(Map<String, dynamic> json) {
  return _BookingDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailsModel {
  @HiveField(0)
  String? get bookingId => throw _privateConstructorUsedError;
  @HiveField(1)
  int? get hotelId => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get createdAt => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get checkIn => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get checkOut => throw _privateConstructorUsedError;
  @HiveField(7)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get children => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get category => throw _privateConstructorUsedError;
  @HiveField(10)
  String? get board => throw _privateConstructorUsedError;
  @HiveField(11)
  String? get price => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDetailsModelCopyWith<BookingDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsModelCopyWith<$Res> {
  factory $BookingDetailsModelCopyWith(
          BookingDetailsModel value, $Res Function(BookingDetailsModel) then) =
      _$BookingDetailsModelCopyWithImpl<$Res, BookingDetailsModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? bookingId,
      @HiveField(1) int? hotelId,
      @HiveField(2) String? createdAt,
      @HiveField(3) String? firstName,
      @HiveField(4) String? lastName,
      @HiveField(5) String? checkIn,
      @HiveField(6) String? checkOut,
      @HiveField(7) int? adults,
      @HiveField(8) int? children,
      @HiveField(9) String? category,
      @HiveField(10) String? board,
      @HiveField(11) String? price,
      @HiveField(12) String? type});
}

/// @nodoc
class _$BookingDetailsModelCopyWithImpl<$Res, $Val extends BookingDetailsModel>
    implements $BookingDetailsModelCopyWith<$Res> {
  _$BookingDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? hotelId = freezed,
    Object? createdAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? adults = freezed,
    Object? children = freezed,
    Object? category = freezed,
    Object? board = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      adults: freezed == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingDetailsModelImplCopyWith<$Res>
    implements $BookingDetailsModelCopyWith<$Res> {
  factory _$$BookingDetailsModelImplCopyWith(_$BookingDetailsModelImpl value,
          $Res Function(_$BookingDetailsModelImpl) then) =
      __$$BookingDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? bookingId,
      @HiveField(1) int? hotelId,
      @HiveField(2) String? createdAt,
      @HiveField(3) String? firstName,
      @HiveField(4) String? lastName,
      @HiveField(5) String? checkIn,
      @HiveField(6) String? checkOut,
      @HiveField(7) int? adults,
      @HiveField(8) int? children,
      @HiveField(9) String? category,
      @HiveField(10) String? board,
      @HiveField(11) String? price,
      @HiveField(12) String? type});
}

/// @nodoc
class __$$BookingDetailsModelImplCopyWithImpl<$Res>
    extends _$BookingDetailsModelCopyWithImpl<$Res, _$BookingDetailsModelImpl>
    implements _$$BookingDetailsModelImplCopyWith<$Res> {
  __$$BookingDetailsModelImplCopyWithImpl(_$BookingDetailsModelImpl _value,
      $Res Function(_$BookingDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookingId = freezed,
    Object? hotelId = freezed,
    Object? createdAt = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? checkIn = freezed,
    Object? checkOut = freezed,
    Object? adults = freezed,
    Object? children = freezed,
    Object? category = freezed,
    Object? board = freezed,
    Object? price = freezed,
    Object? type = freezed,
  }) {
    return _then(_$BookingDetailsModelImpl(
      bookingId: freezed == bookingId
          ? _value.bookingId
          : bookingId // ignore: cast_nullable_to_non_nullable
              as String?,
      hotelId: freezed == hotelId
          ? _value.hotelId
          : hotelId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      checkIn: freezed == checkIn
          ? _value.checkIn
          : checkIn // ignore: cast_nullable_to_non_nullable
              as String?,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as String?,
      adults: freezed == adults
          ? _value.adults
          : adults // ignore: cast_nullable_to_non_nullable
              as int?,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as int?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      board: freezed == board
          ? _value.board
          : board // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDetailsModelImpl implements _BookingDetailsModel {
  _$BookingDetailsModelImpl(
      {@HiveField(0) this.bookingId,
      @HiveField(1) this.hotelId,
      @HiveField(2) this.createdAt,
      @HiveField(3) this.firstName,
      @HiveField(4) this.lastName,
      @HiveField(5) this.checkIn,
      @HiveField(6) this.checkOut,
      @HiveField(7) this.adults,
      @HiveField(8) this.children,
      @HiveField(9) this.category,
      @HiveField(10) this.board,
      @HiveField(11) this.price,
      @HiveField(12) this.type});

  factory _$BookingDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailsModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? bookingId;
  @override
  @HiveField(1)
  final int? hotelId;
  @override
  @HiveField(2)
  final String? createdAt;
  @override
  @HiveField(3)
  final String? firstName;
  @override
  @HiveField(4)
  final String? lastName;
  @override
  @HiveField(5)
  final String? checkIn;
  @override
  @HiveField(6)
  final String? checkOut;
  @override
  @HiveField(7)
  final int? adults;
  @override
  @HiveField(8)
  final int? children;
  @override
  @HiveField(9)
  final String? category;
  @override
  @HiveField(10)
  final String? board;
  @override
  @HiveField(11)
  final String? price;
  @override
  @HiveField(12)
  final String? type;

  @override
  String toString() {
    return 'BookingDetailsModel(bookingId: $bookingId, hotelId: $hotelId, createdAt: $createdAt, firstName: $firstName, lastName: $lastName, checkIn: $checkIn, checkOut: $checkOut, adults: $adults, children: $children, category: $category, board: $board, price: $price, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsModelImpl &&
            (identical(other.bookingId, bookingId) ||
                other.bookingId == bookingId) &&
            (identical(other.hotelId, hotelId) || other.hotelId == hotelId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.checkIn, checkIn) || other.checkIn == checkIn) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.board, board) || other.board == board) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bookingId,
      hotelId,
      createdAt,
      firstName,
      lastName,
      checkIn,
      checkOut,
      adults,
      children,
      category,
      board,
      price,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsModelImplCopyWith<_$BookingDetailsModelImpl> get copyWith =>
      __$$BookingDetailsModelImplCopyWithImpl<_$BookingDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BookingDetailsModel implements BookingDetailsModel {
  factory _BookingDetailsModel(
      {@HiveField(0) final String? bookingId,
      @HiveField(1) final int? hotelId,
      @HiveField(2) final String? createdAt,
      @HiveField(3) final String? firstName,
      @HiveField(4) final String? lastName,
      @HiveField(5) final String? checkIn,
      @HiveField(6) final String? checkOut,
      @HiveField(7) final int? adults,
      @HiveField(8) final int? children,
      @HiveField(9) final String? category,
      @HiveField(10) final String? board,
      @HiveField(11) final String? price,
      @HiveField(12) final String? type}) = _$BookingDetailsModelImpl;

  factory _BookingDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BookingDetailsModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get bookingId;
  @override
  @HiveField(1)
  int? get hotelId;
  @override
  @HiveField(2)
  String? get createdAt;
  @override
  @HiveField(3)
  String? get firstName;
  @override
  @HiveField(4)
  String? get lastName;
  @override
  @HiveField(5)
  String? get checkIn;
  @override
  @HiveField(6)
  String? get checkOut;
  @override
  @HiveField(7)
  int? get adults;
  @override
  @HiveField(8)
  int? get children;
  @override
  @HiveField(9)
  String? get category;
  @override
  @HiveField(10)
  String? get board;
  @override
  @HiveField(11)
  String? get price;
  @override
  @HiveField(12)
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$BookingDetailsModelImplCopyWith<_$BookingDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
