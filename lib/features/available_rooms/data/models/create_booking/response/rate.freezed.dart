// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookingRate _$BookingRateFromJson(Map<String, dynamic> json) {
  return _BookingRate.fromJson(json);
}

/// @nodoc
mixin _$BookingRate {
  @HiveField(0)
  String? get rateClass => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get net => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get rateComments => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get paymentType => throw _privateConstructorUsedError;
  @HiveField(4)
  bool? get packaging => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get boardCode => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get boardName => throw _privateConstructorUsedError;
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(8)
  Taxes? get taxes => throw _privateConstructorUsedError;
  @HiveField(9)
  int? get rooms => throw _privateConstructorUsedError;
  @HiveField(10)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(11)
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingRateCopyWith<BookingRate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingRateCopyWith<$Res> {
  factory $BookingRateCopyWith(
          BookingRate value, $Res Function(BookingRate) then) =
      _$BookingRateCopyWithImpl<$Res, BookingRate>;
  @useResult
  $Res call(
      {@HiveField(0) String? rateClass,
      @HiveField(1) String? net,
      @HiveField(2) String? rateComments,
      @HiveField(3) String? paymentType,
      @HiveField(4) bool? packaging,
      @HiveField(5) String? boardCode,
      @HiveField(6) String? boardName,
      @HiveField(7) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) Taxes? taxes,
      @HiveField(9) int? rooms,
      @HiveField(10) int? adults,
      @HiveField(11) int? children});

  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class _$BookingRateCopyWithImpl<$Res, $Val extends BookingRate>
    implements $BookingRateCopyWith<$Res> {
  _$BookingRateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateClass = freezed,
    Object? net = freezed,
    Object? rateComments = freezed,
    Object? paymentType = freezed,
    Object? packaging = freezed,
    Object? boardCode = freezed,
    Object? boardName = freezed,
    Object? cancellationPolicies = freezed,
    Object? taxes = freezed,
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      rateClass: freezed == rateClass
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      rateComments: freezed == rateComments
          ? _value.rateComments
          : rateComments // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: freezed == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      boardCode: freezed == boardCode
          ? _value.boardCode
          : boardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      boardName: freezed == boardName
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationPolicies: freezed == cancellationPolicies
          ? _value.cancellationPolicies
          : cancellationPolicies // ignore: cast_nullable_to_non_nullable
              as List<CancellationPolicy>?,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as Taxes?,
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

  @override
  @pragma('vm:prefer-inline')
  $TaxesCopyWith<$Res>? get taxes {
    if (_value.taxes == null) {
      return null;
    }

    return $TaxesCopyWith<$Res>(_value.taxes!, (value) {
      return _then(_value.copyWith(taxes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingRateImplCopyWith<$Res>
    implements $BookingRateCopyWith<$Res> {
  factory _$$BookingRateImplCopyWith(
          _$BookingRateImpl value, $Res Function(_$BookingRateImpl) then) =
      __$$BookingRateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? rateClass,
      @HiveField(1) String? net,
      @HiveField(2) String? rateComments,
      @HiveField(3) String? paymentType,
      @HiveField(4) bool? packaging,
      @HiveField(5) String? boardCode,
      @HiveField(6) String? boardName,
      @HiveField(7) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) Taxes? taxes,
      @HiveField(9) int? rooms,
      @HiveField(10) int? adults,
      @HiveField(11) int? children});

  @override
  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class __$$BookingRateImplCopyWithImpl<$Res>
    extends _$BookingRateCopyWithImpl<$Res, _$BookingRateImpl>
    implements _$$BookingRateImplCopyWith<$Res> {
  __$$BookingRateImplCopyWithImpl(
      _$BookingRateImpl _value, $Res Function(_$BookingRateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateClass = freezed,
    Object? net = freezed,
    Object? rateComments = freezed,
    Object? paymentType = freezed,
    Object? packaging = freezed,
    Object? boardCode = freezed,
    Object? boardName = freezed,
    Object? cancellationPolicies = freezed,
    Object? taxes = freezed,
    Object? rooms = freezed,
    Object? adults = freezed,
    Object? children = freezed,
  }) {
    return _then(_$BookingRateImpl(
      rateClass: freezed == rateClass
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      rateComments: freezed == rateComments
          ? _value.rateComments
          : rateComments // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      packaging: freezed == packaging
          ? _value.packaging
          : packaging // ignore: cast_nullable_to_non_nullable
              as bool?,
      boardCode: freezed == boardCode
          ? _value.boardCode
          : boardCode // ignore: cast_nullable_to_non_nullable
              as String?,
      boardName: freezed == boardName
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellationPolicies: freezed == cancellationPolicies
          ? _value._cancellationPolicies
          : cancellationPolicies // ignore: cast_nullable_to_non_nullable
              as List<CancellationPolicy>?,
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as Taxes?,
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
class _$BookingRateImpl implements _BookingRate {
  _$BookingRateImpl(
      {@HiveField(0) this.rateClass,
      @HiveField(1) this.net,
      @HiveField(2) this.rateComments,
      @HiveField(3) this.paymentType,
      @HiveField(4) this.packaging,
      @HiveField(5) this.boardCode,
      @HiveField(6) this.boardName,
      @HiveField(7) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) this.taxes,
      @HiveField(9) this.rooms,
      @HiveField(10) this.adults,
      @HiveField(11) this.children})
      : _cancellationPolicies = cancellationPolicies;

  factory _$BookingRateImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingRateImplFromJson(json);

  @override
  @HiveField(0)
  final String? rateClass;
  @override
  @HiveField(1)
  final String? net;
  @override
  @HiveField(2)
  final String? rateComments;
  @override
  @HiveField(3)
  final String? paymentType;
  @override
  @HiveField(4)
  final bool? packaging;
  @override
  @HiveField(5)
  final String? boardCode;
  @override
  @HiveField(6)
  final String? boardName;
  final List<CancellationPolicy>? _cancellationPolicies;
  @override
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies {
    final value = _cancellationPolicies;
    if (value == null) return null;
    if (_cancellationPolicies is EqualUnmodifiableListView)
      return _cancellationPolicies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(8)
  final Taxes? taxes;
  @override
  @HiveField(9)
  final int? rooms;
  @override
  @HiveField(10)
  final int? adults;
  @override
  @HiveField(11)
  final int? children;

  @override
  String toString() {
    return 'BookingRate(rateClass: $rateClass, net: $net, rateComments: $rateComments, paymentType: $paymentType, packaging: $packaging, boardCode: $boardCode, boardName: $boardName, cancellationPolicies: $cancellationPolicies, taxes: $taxes, rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingRateImpl &&
            (identical(other.rateClass, rateClass) ||
                other.rateClass == rateClass) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.rateComments, rateComments) ||
                other.rateComments == rateComments) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.packaging, packaging) ||
                other.packaging == packaging) &&
            (identical(other.boardCode, boardCode) ||
                other.boardCode == boardCode) &&
            (identical(other.boardName, boardName) ||
                other.boardName == boardName) &&
            const DeepCollectionEquality()
                .equals(other._cancellationPolicies, _cancellationPolicies) &&
            (identical(other.taxes, taxes) || other.taxes == taxes) &&
            (identical(other.rooms, rooms) || other.rooms == rooms) &&
            (identical(other.adults, adults) || other.adults == adults) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      rateClass,
      net,
      rateComments,
      paymentType,
      packaging,
      boardCode,
      boardName,
      const DeepCollectionEquality().hash(_cancellationPolicies),
      taxes,
      rooms,
      adults,
      children);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingRateImplCopyWith<_$BookingRateImpl> get copyWith =>
      __$$BookingRateImplCopyWithImpl<_$BookingRateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingRateImplToJson(
      this,
    );
  }
}

abstract class _BookingRate implements BookingRate {
  factory _BookingRate(
      {@HiveField(0) final String? rateClass,
      @HiveField(1) final String? net,
      @HiveField(2) final String? rateComments,
      @HiveField(3) final String? paymentType,
      @HiveField(4) final bool? packaging,
      @HiveField(5) final String? boardCode,
      @HiveField(6) final String? boardName,
      @HiveField(7) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(8) final Taxes? taxes,
      @HiveField(9) final int? rooms,
      @HiveField(10) final int? adults,
      @HiveField(11) final int? children}) = _$BookingRateImpl;

  factory _BookingRate.fromJson(Map<String, dynamic> json) =
      _$BookingRateImpl.fromJson;

  @override
  @HiveField(0)
  String? get rateClass;
  @override
  @HiveField(1)
  String? get net;
  @override
  @HiveField(2)
  String? get rateComments;
  @override
  @HiveField(3)
  String? get paymentType;
  @override
  @HiveField(4)
  bool? get packaging;
  @override
  @HiveField(5)
  String? get boardCode;
  @override
  @HiveField(6)
  String? get boardName;
  @override
  @HiveField(7)
  List<CancellationPolicy>? get cancellationPolicies;
  @override
  @HiveField(8)
  Taxes? get taxes;
  @override
  @HiveField(9)
  int? get rooms;
  @override
  @HiveField(10)
  int? get adults;
  @override
  @HiveField(11)
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$BookingRateImplCopyWith<_$BookingRateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
