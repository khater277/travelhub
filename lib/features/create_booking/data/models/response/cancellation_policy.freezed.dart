// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancellation_policy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CancellationPolicy _$CancellationPolicyFromJson(Map<String, dynamic> json) {
  return _CancellationPolicy.fromJson(json);
}

/// @nodoc
mixin _$CancellationPolicy {
  @HiveField(0)
  String? get amount => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get from => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancellationPolicyCopyWith<CancellationPolicy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancellationPolicyCopyWith<$Res> {
  factory $CancellationPolicyCopyWith(
          CancellationPolicy value, $Res Function(CancellationPolicy) then) =
      _$CancellationPolicyCopyWithImpl<$Res, CancellationPolicy>;
  @useResult
  $Res call({@HiveField(0) String? amount, @HiveField(1) String? from});
}

/// @nodoc
class _$CancellationPolicyCopyWithImpl<$Res, $Val extends CancellationPolicy>
    implements $CancellationPolicyCopyWith<$Res> {
  _$CancellationPolicyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? from = freezed,
  }) {
    return _then(_value.copyWith(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CancellationPolicyImplCopyWith<$Res>
    implements $CancellationPolicyCopyWith<$Res> {
  factory _$$CancellationPolicyImplCopyWith(_$CancellationPolicyImpl value,
          $Res Function(_$CancellationPolicyImpl) then) =
      __$$CancellationPolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? amount, @HiveField(1) String? from});
}

/// @nodoc
class __$$CancellationPolicyImplCopyWithImpl<$Res>
    extends _$CancellationPolicyCopyWithImpl<$Res, _$CancellationPolicyImpl>
    implements _$$CancellationPolicyImplCopyWith<$Res> {
  __$$CancellationPolicyImplCopyWithImpl(_$CancellationPolicyImpl _value,
      $Res Function(_$CancellationPolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? from = freezed,
  }) {
    return _then(_$CancellationPolicyImpl(
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CancellationPolicyImpl implements _CancellationPolicy {
  _$CancellationPolicyImpl(
      {@HiveField(0) this.amount, @HiveField(1) this.from});

  factory _$CancellationPolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancellationPolicyImplFromJson(json);

  @override
  @HiveField(0)
  final String? amount;
  @override
  @HiveField(1)
  final String? from;

  @override
  String toString() {
    return 'CancellationPolicy(amount: $amount, from: $from)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancellationPolicyImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.from, from) || other.from == from));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, amount, from);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancellationPolicyImplCopyWith<_$CancellationPolicyImpl> get copyWith =>
      __$$CancellationPolicyImplCopyWithImpl<_$CancellationPolicyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancellationPolicyImplToJson(
      this,
    );
  }
}

abstract class _CancellationPolicy implements CancellationPolicy {
  factory _CancellationPolicy(
      {@HiveField(0) final String? amount,
      @HiveField(1) final String? from}) = _$CancellationPolicyImpl;

  factory _CancellationPolicy.fromJson(Map<String, dynamic> json) =
      _$CancellationPolicyImpl.fromJson;

  @override
  @HiveField(0)
  String? get amount;
  @override
  @HiveField(1)
  String? get from;
  @override
  @JsonKey(ignore: true)
  _$$CancellationPolicyImplCopyWith<_$CancellationPolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
