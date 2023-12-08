// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tax _$TaxFromJson(Map<String, dynamic> json) {
  return _Tax.fromJson(json);
}

/// @nodoc
mixin _$Tax {
  @HiveField(0)
  bool? get included => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get amount => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get currency => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get clientAmount => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get clientCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxCopyWith<Tax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxCopyWith<$Res> {
  factory $TaxCopyWith(Tax value, $Res Function(Tax) then) =
      _$TaxCopyWithImpl<$Res, Tax>;
  @useResult
  $Res call(
      {@HiveField(0) bool? included,
      @HiveField(1) String? amount,
      @HiveField(2) String? currency,
      @HiveField(3) String? clientAmount,
      @HiveField(4) String? clientCurrency});
}

/// @nodoc
class _$TaxCopyWithImpl<$Res, $Val extends Tax> implements $TaxCopyWith<$Res> {
  _$TaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? included = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? clientAmount = freezed,
    Object? clientCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      included: freezed == included
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      clientAmount: freezed == clientAmount
          ? _value.clientAmount
          : clientAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCurrency: freezed == clientCurrency
          ? _value.clientCurrency
          : clientCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxImplCopyWith<$Res> implements $TaxCopyWith<$Res> {
  factory _$$TaxImplCopyWith(_$TaxImpl value, $Res Function(_$TaxImpl) then) =
      __$$TaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool? included,
      @HiveField(1) String? amount,
      @HiveField(2) String? currency,
      @HiveField(3) String? clientAmount,
      @HiveField(4) String? clientCurrency});
}

/// @nodoc
class __$$TaxImplCopyWithImpl<$Res> extends _$TaxCopyWithImpl<$Res, _$TaxImpl>
    implements _$$TaxImplCopyWith<$Res> {
  __$$TaxImplCopyWithImpl(_$TaxImpl _value, $Res Function(_$TaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? included = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? clientAmount = freezed,
    Object? clientCurrency = freezed,
  }) {
    return _then(_$TaxImpl(
      included: freezed == included
          ? _value.included
          : included // ignore: cast_nullable_to_non_nullable
              as bool?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      clientAmount: freezed == clientAmount
          ? _value.clientAmount
          : clientAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      clientCurrency: freezed == clientCurrency
          ? _value.clientCurrency
          : clientCurrency // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxImpl implements _Tax {
  _$TaxImpl(
      {@HiveField(0) this.included,
      @HiveField(1) this.amount,
      @HiveField(2) this.currency,
      @HiveField(3) this.clientAmount,
      @HiveField(4) this.clientCurrency});

  factory _$TaxImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxImplFromJson(json);

  @override
  @HiveField(0)
  final bool? included;
  @override
  @HiveField(1)
  final String? amount;
  @override
  @HiveField(2)
  final String? currency;
  @override
  @HiveField(3)
  final String? clientAmount;
  @override
  @HiveField(4)
  final String? clientCurrency;

  @override
  String toString() {
    return 'Tax(included: $included, amount: $amount, currency: $currency, clientAmount: $clientAmount, clientCurrency: $clientCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxImpl &&
            (identical(other.included, included) ||
                other.included == included) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.clientAmount, clientAmount) ||
                other.clientAmount == clientAmount) &&
            (identical(other.clientCurrency, clientCurrency) ||
                other.clientCurrency == clientCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, included, amount, currency, clientAmount, clientCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      __$$TaxImplCopyWithImpl<_$TaxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxImplToJson(
      this,
    );
  }
}

abstract class _Tax implements Tax {
  factory _Tax(
      {@HiveField(0) final bool? included,
      @HiveField(1) final String? amount,
      @HiveField(2) final String? currency,
      @HiveField(3) final String? clientAmount,
      @HiveField(4) final String? clientCurrency}) = _$TaxImpl;

  factory _Tax.fromJson(Map<String, dynamic> json) = _$TaxImpl.fromJson;

  @override
  @HiveField(0)
  bool? get included;
  @override
  @HiveField(1)
  String? get amount;
  @override
  @HiveField(2)
  String? get currency;
  @override
  @HiveField(3)
  String? get clientAmount;
  @override
  @HiveField(4)
  String? get clientCurrency;
  @override
  @JsonKey(ignore: true)
  _$$TaxImplCopyWith<_$TaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
