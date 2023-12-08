// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  @HiveField(0)
  String? get reference => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get clientReference => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get creationDate => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get status => throw _privateConstructorUsedError;
  @HiveField(4)
  ModificationPolicies? get modificationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(5)
  String? get creationUser => throw _privateConstructorUsedError;
  @HiveField(6)
  Holder? get holder => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel')
  @HiveField(7)
  BookingHotel? get bookingHotel => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get remark => throw _privateConstructorUsedError;
  @HiveField(9)
  InvoiceCompany? get invoiceCompany => throw _privateConstructorUsedError;
  @HiveField(10)
  double? get totalNet => throw _privateConstructorUsedError;
  @HiveField(11)
  double? get pendingAmount => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get currency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call(
      {@HiveField(0) String? reference,
      @HiveField(1) String? clientReference,
      @HiveField(2) String? creationDate,
      @HiveField(3) String? status,
      @HiveField(4) ModificationPolicies? modificationPolicies,
      @HiveField(5) String? creationUser,
      @HiveField(6) Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) BookingHotel? bookingHotel,
      @HiveField(8) String? remark,
      @HiveField(9) InvoiceCompany? invoiceCompany,
      @HiveField(10) double? totalNet,
      @HiveField(11) double? pendingAmount,
      @HiveField(12) String? currency});

  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
  $HolderCopyWith<$Res>? get holder;
  $BookingHotelCopyWith<$Res>? get bookingHotel;
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany;
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? clientReference = freezed,
    Object? creationDate = freezed,
    Object? status = freezed,
    Object? modificationPolicies = freezed,
    Object? creationUser = freezed,
    Object? holder = freezed,
    Object? bookingHotel = freezed,
    Object? remark = freezed,
    Object? invoiceCompany = freezed,
    Object? totalNet = freezed,
    Object? pendingAmount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_value.copyWith(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReference: freezed == clientReference
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationPolicies: freezed == modificationPolicies
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
      creationUser: freezed == creationUser
          ? _value.creationUser
          : creationUser // ignore: cast_nullable_to_non_nullable
              as String?,
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingHotel: freezed == bookingHotel
          ? _value.bookingHotel
          : bookingHotel // ignore: cast_nullable_to_non_nullable
              as BookingHotel?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCompany: freezed == invoiceCompany
          ? _value.invoiceCompany
          : invoiceCompany // ignore: cast_nullable_to_non_nullable
              as InvoiceCompany?,
      totalNet: freezed == totalNet
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingAmount: freezed == pendingAmount
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies {
    if (_value.modificationPolicies == null) {
      return null;
    }

    return $ModificationPoliciesCopyWith<$Res>(_value.modificationPolicies!,
        (value) {
      return _then(_value.copyWith(modificationPolicies: value) as $Val);
    });
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

  @override
  @pragma('vm:prefer-inline')
  $BookingHotelCopyWith<$Res>? get bookingHotel {
    if (_value.bookingHotel == null) {
      return null;
    }

    return $BookingHotelCopyWith<$Res>(_value.bookingHotel!, (value) {
      return _then(_value.copyWith(bookingHotel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany {
    if (_value.invoiceCompany == null) {
      return null;
    }

    return $InvoiceCompanyCopyWith<$Res>(_value.invoiceCompany!, (value) {
      return _then(_value.copyWith(invoiceCompany: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
          _$BookingImpl value, $Res Function(_$BookingImpl) then) =
      __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? reference,
      @HiveField(1) String? clientReference,
      @HiveField(2) String? creationDate,
      @HiveField(3) String? status,
      @HiveField(4) ModificationPolicies? modificationPolicies,
      @HiveField(5) String? creationUser,
      @HiveField(6) Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) BookingHotel? bookingHotel,
      @HiveField(8) String? remark,
      @HiveField(9) InvoiceCompany? invoiceCompany,
      @HiveField(10) double? totalNet,
      @HiveField(11) double? pendingAmount,
      @HiveField(12) String? currency});

  @override
  $ModificationPoliciesCopyWith<$Res>? get modificationPolicies;
  @override
  $HolderCopyWith<$Res>? get holder;
  @override
  $BookingHotelCopyWith<$Res>? get bookingHotel;
  @override
  $InvoiceCompanyCopyWith<$Res>? get invoiceCompany;
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
      _$BookingImpl _value, $Res Function(_$BookingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reference = freezed,
    Object? clientReference = freezed,
    Object? creationDate = freezed,
    Object? status = freezed,
    Object? modificationPolicies = freezed,
    Object? creationUser = freezed,
    Object? holder = freezed,
    Object? bookingHotel = freezed,
    Object? remark = freezed,
    Object? invoiceCompany = freezed,
    Object? totalNet = freezed,
    Object? pendingAmount = freezed,
    Object? currency = freezed,
  }) {
    return _then(_$BookingImpl(
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      clientReference: freezed == clientReference
          ? _value.clientReference
          : clientReference // ignore: cast_nullable_to_non_nullable
              as String?,
      creationDate: freezed == creationDate
          ? _value.creationDate
          : creationDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      modificationPolicies: freezed == modificationPolicies
          ? _value.modificationPolicies
          : modificationPolicies // ignore: cast_nullable_to_non_nullable
              as ModificationPolicies?,
      creationUser: freezed == creationUser
          ? _value.creationUser
          : creationUser // ignore: cast_nullable_to_non_nullable
              as String?,
      holder: freezed == holder
          ? _value.holder
          : holder // ignore: cast_nullable_to_non_nullable
              as Holder?,
      bookingHotel: freezed == bookingHotel
          ? _value.bookingHotel
          : bookingHotel // ignore: cast_nullable_to_non_nullable
              as BookingHotel?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceCompany: freezed == invoiceCompany
          ? _value.invoiceCompany
          : invoiceCompany // ignore: cast_nullable_to_non_nullable
              as InvoiceCompany?,
      totalNet: freezed == totalNet
          ? _value.totalNet
          : totalNet // ignore: cast_nullable_to_non_nullable
              as double?,
      pendingAmount: freezed == pendingAmount
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  _$BookingImpl(
      {@HiveField(0) this.reference,
      @HiveField(1) this.clientReference,
      @HiveField(2) this.creationDate,
      @HiveField(3) this.status,
      @HiveField(4) this.modificationPolicies,
      @HiveField(5) this.creationUser,
      @HiveField(6) this.holder,
      @JsonKey(name: 'hotel') @HiveField(7) this.bookingHotel,
      @HiveField(8) this.remark,
      @HiveField(9) this.invoiceCompany,
      @HiveField(10) this.totalNet,
      @HiveField(11) this.pendingAmount,
      @HiveField(12) this.currency});

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  @HiveField(0)
  final String? reference;
  @override
  @HiveField(1)
  final String? clientReference;
  @override
  @HiveField(2)
  final String? creationDate;
  @override
  @HiveField(3)
  final String? status;
  @override
  @HiveField(4)
  final ModificationPolicies? modificationPolicies;
  @override
  @HiveField(5)
  final String? creationUser;
  @override
  @HiveField(6)
  final Holder? holder;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(7)
  final BookingHotel? bookingHotel;
  @override
  @HiveField(8)
  final String? remark;
  @override
  @HiveField(9)
  final InvoiceCompany? invoiceCompany;
  @override
  @HiveField(10)
  final double? totalNet;
  @override
  @HiveField(11)
  final double? pendingAmount;
  @override
  @HiveField(12)
  final String? currency;

  @override
  String toString() {
    return 'Booking(reference: $reference, clientReference: $clientReference, creationDate: $creationDate, status: $status, modificationPolicies: $modificationPolicies, creationUser: $creationUser, holder: $holder, bookingHotel: $bookingHotel, remark: $remark, invoiceCompany: $invoiceCompany, totalNet: $totalNet, pendingAmount: $pendingAmount, currency: $currency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.clientReference, clientReference) ||
                other.clientReference == clientReference) &&
            (identical(other.creationDate, creationDate) ||
                other.creationDate == creationDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.modificationPolicies, modificationPolicies) ||
                other.modificationPolicies == modificationPolicies) &&
            (identical(other.creationUser, creationUser) ||
                other.creationUser == creationUser) &&
            (identical(other.holder, holder) || other.holder == holder) &&
            (identical(other.bookingHotel, bookingHotel) ||
                other.bookingHotel == bookingHotel) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.invoiceCompany, invoiceCompany) ||
                other.invoiceCompany == invoiceCompany) &&
            (identical(other.totalNet, totalNet) ||
                other.totalNet == totalNet) &&
            (identical(other.pendingAmount, pendingAmount) ||
                other.pendingAmount == pendingAmount) &&
            (identical(other.currency, currency) ||
                other.currency == currency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reference,
      clientReference,
      creationDate,
      status,
      modificationPolicies,
      creationUser,
      holder,
      bookingHotel,
      remark,
      invoiceCompany,
      totalNet,
      pendingAmount,
      currency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(
      this,
    );
  }
}

abstract class _Booking implements Booking {
  factory _Booking(
      {@HiveField(0) final String? reference,
      @HiveField(1) final String? clientReference,
      @HiveField(2) final String? creationDate,
      @HiveField(3) final String? status,
      @HiveField(4) final ModificationPolicies? modificationPolicies,
      @HiveField(5) final String? creationUser,
      @HiveField(6) final Holder? holder,
      @JsonKey(name: 'hotel') @HiveField(7) final BookingHotel? bookingHotel,
      @HiveField(8) final String? remark,
      @HiveField(9) final InvoiceCompany? invoiceCompany,
      @HiveField(10) final double? totalNet,
      @HiveField(11) final double? pendingAmount,
      @HiveField(12) final String? currency}) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  @HiveField(0)
  String? get reference;
  @override
  @HiveField(1)
  String? get clientReference;
  @override
  @HiveField(2)
  String? get creationDate;
  @override
  @HiveField(3)
  String? get status;
  @override
  @HiveField(4)
  ModificationPolicies? get modificationPolicies;
  @override
  @HiveField(5)
  String? get creationUser;
  @override
  @HiveField(6)
  Holder? get holder;
  @override
  @JsonKey(name: 'hotel')
  @HiveField(7)
  BookingHotel? get bookingHotel;
  @override
  @HiveField(8)
  String? get remark;
  @override
  @HiveField(9)
  InvoiceCompany? get invoiceCompany;
  @override
  @HiveField(10)
  double? get totalNet;
  @override
  @HiveField(11)
  double? get pendingAmount;
  @override
  @HiveField(12)
  String? get currency;
  @override
  @JsonKey(ignore: true)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
