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

Rate _$RateFromJson(Map<String, dynamic> json) {
  return _Rate.fromJson(json);
}

/// @nodoc
mixin _$Rate {
  @HiveField(0)
  String? get rateKey => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get rateClass => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get rateType => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get net => throw _privateConstructorUsedError;
  @HiveField(4)
  int? get allotment => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get rateComments => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get paymentType => throw _privateConstructorUsedError;
  @HiveField(7)
  bool? get packaging => throw _privateConstructorUsedError;
  @HiveField(8)
  String? get boardCode => throw _privateConstructorUsedError;
  @HiveField(9)
  String? get boardName => throw _privateConstructorUsedError;
  @HiveField(10)
  List<CancellationPolicy>? get cancellationPolicies =>
      throw _privateConstructorUsedError;
  @HiveField(11)
  Taxes? get taxes => throw _privateConstructorUsedError;
  @HiveField(12)
  int? get rooms => throw _privateConstructorUsedError;
  @HiveField(13)
  int? get adults => throw _privateConstructorUsedError;
  @HiveField(14)
  int? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RateCopyWith<Rate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateCopyWith<$Res> {
  factory $RateCopyWith(Rate value, $Res Function(Rate) then) =
      _$RateCopyWithImpl<$Res, Rate>;
  @useResult
  $Res call(
      {@HiveField(0) String? rateKey,
      @HiveField(1) String? rateClass,
      @HiveField(2) String? rateType,
      @HiveField(3) String? net,
      @HiveField(4) int? allotment,
      @HiveField(5) String? rateComments,
      @HiveField(6) String? paymentType,
      @HiveField(7) bool? packaging,
      @HiveField(8) String? boardCode,
      @HiveField(9) String? boardName,
      @HiveField(10) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(11) Taxes? taxes,
      @HiveField(12) int? rooms,
      @HiveField(13) int? adults,
      @HiveField(14) int? children});

  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class _$RateCopyWithImpl<$Res, $Val extends Rate>
    implements $RateCopyWith<$Res> {
  _$RateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
    Object? rateClass = freezed,
    Object? rateType = freezed,
    Object? net = freezed,
    Object? allotment = freezed,
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
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      rateClass: freezed == rateClass
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      rateType: freezed == rateType
          ? _value.rateType
          : rateType // ignore: cast_nullable_to_non_nullable
              as String?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      allotment: freezed == allotment
          ? _value.allotment
          : allotment // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$RateImplCopyWith<$Res> implements $RateCopyWith<$Res> {
  factory _$$RateImplCopyWith(
          _$RateImpl value, $Res Function(_$RateImpl) then) =
      __$$RateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? rateKey,
      @HiveField(1) String? rateClass,
      @HiveField(2) String? rateType,
      @HiveField(3) String? net,
      @HiveField(4) int? allotment,
      @HiveField(5) String? rateComments,
      @HiveField(6) String? paymentType,
      @HiveField(7) bool? packaging,
      @HiveField(8) String? boardCode,
      @HiveField(9) String? boardName,
      @HiveField(10) List<CancellationPolicy>? cancellationPolicies,
      @HiveField(11) Taxes? taxes,
      @HiveField(12) int? rooms,
      @HiveField(13) int? adults,
      @HiveField(14) int? children});

  @override
  $TaxesCopyWith<$Res>? get taxes;
}

/// @nodoc
class __$$RateImplCopyWithImpl<$Res>
    extends _$RateCopyWithImpl<$Res, _$RateImpl>
    implements _$$RateImplCopyWith<$Res> {
  __$$RateImplCopyWithImpl(_$RateImpl _value, $Res Function(_$RateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rateKey = freezed,
    Object? rateClass = freezed,
    Object? rateType = freezed,
    Object? net = freezed,
    Object? allotment = freezed,
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
    return _then(_$RateImpl(
      rateKey: freezed == rateKey
          ? _value.rateKey
          : rateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      rateClass: freezed == rateClass
          ? _value.rateClass
          : rateClass // ignore: cast_nullable_to_non_nullable
              as String?,
      rateType: freezed == rateType
          ? _value.rateType
          : rateType // ignore: cast_nullable_to_non_nullable
              as String?,
      net: freezed == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as String?,
      allotment: freezed == allotment
          ? _value.allotment
          : allotment // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$RateImpl implements _Rate {
  _$RateImpl(
      {@HiveField(0) this.rateKey,
      @HiveField(1) this.rateClass,
      @HiveField(2) this.rateType,
      @HiveField(3) this.net,
      @HiveField(4) this.allotment,
      @HiveField(5) this.rateComments,
      @HiveField(6) this.paymentType,
      @HiveField(7) this.packaging,
      @HiveField(8) this.boardCode,
      @HiveField(9) this.boardName,
      @HiveField(10) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(11) this.taxes,
      @HiveField(12) this.rooms,
      @HiveField(13) this.adults,
      @HiveField(14) this.children})
      : _cancellationPolicies = cancellationPolicies;

  factory _$RateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RateImplFromJson(json);

  @override
  @HiveField(0)
  final String? rateKey;
  @override
  @HiveField(1)
  final String? rateClass;
  @override
  @HiveField(2)
  final String? rateType;
  @override
  @HiveField(3)
  final String? net;
  @override
  @HiveField(4)
  final int? allotment;
  @override
  @HiveField(5)
  final String? rateComments;
  @override
  @HiveField(6)
  final String? paymentType;
  @override
  @HiveField(7)
  final bool? packaging;
  @override
  @HiveField(8)
  final String? boardCode;
  @override
  @HiveField(9)
  final String? boardName;
  final List<CancellationPolicy>? _cancellationPolicies;
  @override
  @HiveField(10)
  List<CancellationPolicy>? get cancellationPolicies {
    final value = _cancellationPolicies;
    if (value == null) return null;
    if (_cancellationPolicies is EqualUnmodifiableListView)
      return _cancellationPolicies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(11)
  final Taxes? taxes;
  @override
  @HiveField(12)
  final int? rooms;
  @override
  @HiveField(13)
  final int? adults;
  @override
  @HiveField(14)
  final int? children;

  @override
  String toString() {
    return 'Rate(rateKey: $rateKey, rateClass: $rateClass, rateType: $rateType, net: $net, allotment: $allotment, rateComments: $rateComments, paymentType: $paymentType, packaging: $packaging, boardCode: $boardCode, boardName: $boardName, cancellationPolicies: $cancellationPolicies, taxes: $taxes, rooms: $rooms, adults: $adults, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RateImpl &&
            (identical(other.rateKey, rateKey) || other.rateKey == rateKey) &&
            (identical(other.rateClass, rateClass) ||
                other.rateClass == rateClass) &&
            (identical(other.rateType, rateType) ||
                other.rateType == rateType) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.allotment, allotment) ||
                other.allotment == allotment) &&
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
      rateKey,
      rateClass,
      rateType,
      net,
      allotment,
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
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      __$$RateImplCopyWithImpl<_$RateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RateImplToJson(
      this,
    );
  }
}

abstract class _Rate implements Rate {
  factory _Rate(
      {@HiveField(0) final String? rateKey,
      @HiveField(1) final String? rateClass,
      @HiveField(2) final String? rateType,
      @HiveField(3) final String? net,
      @HiveField(4) final int? allotment,
      @HiveField(5) final String? rateComments,
      @HiveField(6) final String? paymentType,
      @HiveField(7) final bool? packaging,
      @HiveField(8) final String? boardCode,
      @HiveField(9) final String? boardName,
      @HiveField(10) final List<CancellationPolicy>? cancellationPolicies,
      @HiveField(11) final Taxes? taxes,
      @HiveField(12) final int? rooms,
      @HiveField(13) final int? adults,
      @HiveField(14) final int? children}) = _$RateImpl;

  factory _Rate.fromJson(Map<String, dynamic> json) = _$RateImpl.fromJson;

  @override
  @HiveField(0)
  String? get rateKey;
  @override
  @HiveField(1)
  String? get rateClass;
  @override
  @HiveField(2)
  String? get rateType;
  @override
  @HiveField(3)
  String? get net;
  @override
  @HiveField(4)
  int? get allotment;
  @override
  @HiveField(5)
  String? get rateComments;
  @override
  @HiveField(6)
  String? get paymentType;
  @override
  @HiveField(7)
  bool? get packaging;
  @override
  @HiveField(8)
  String? get boardCode;
  @override
  @HiveField(9)
  String? get boardName;
  @override
  @HiveField(10)
  List<CancellationPolicy>? get cancellationPolicies;
  @override
  @HiveField(11)
  Taxes? get taxes;
  @override
  @HiveField(12)
  int? get rooms;
  @override
  @HiveField(13)
  int? get adults;
  @override
  @HiveField(14)
  int? get children;
  @override
  @JsonKey(ignore: true)
  _$$RateImplCopyWith<_$RateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
