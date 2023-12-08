// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modification_policies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ModificationPolicies _$ModificationPoliciesFromJson(Map<String, dynamic> json) {
  return _ModificationPolicies.fromJson(json);
}

/// @nodoc
mixin _$ModificationPolicies {
  @HiveField(0)
  bool? get cancellation => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get modification => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModificationPoliciesCopyWith<ModificationPolicies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModificationPoliciesCopyWith<$Res> {
  factory $ModificationPoliciesCopyWith(ModificationPolicies value,
          $Res Function(ModificationPolicies) then) =
      _$ModificationPoliciesCopyWithImpl<$Res, ModificationPolicies>;
  @useResult
  $Res call(
      {@HiveField(0) bool? cancellation, @HiveField(1) bool? modification});
}

/// @nodoc
class _$ModificationPoliciesCopyWithImpl<$Res,
        $Val extends ModificationPolicies>
    implements $ModificationPoliciesCopyWith<$Res> {
  _$ModificationPoliciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancellation = freezed,
    Object? modification = freezed,
  }) {
    return _then(_value.copyWith(
      cancellation: freezed == cancellation
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as bool?,
      modification: freezed == modification
          ? _value.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ModificationPoliciesImplCopyWith<$Res>
    implements $ModificationPoliciesCopyWith<$Res> {
  factory _$$ModificationPoliciesImplCopyWith(_$ModificationPoliciesImpl value,
          $Res Function(_$ModificationPoliciesImpl) then) =
      __$$ModificationPoliciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool? cancellation, @HiveField(1) bool? modification});
}

/// @nodoc
class __$$ModificationPoliciesImplCopyWithImpl<$Res>
    extends _$ModificationPoliciesCopyWithImpl<$Res, _$ModificationPoliciesImpl>
    implements _$$ModificationPoliciesImplCopyWith<$Res> {
  __$$ModificationPoliciesImplCopyWithImpl(_$ModificationPoliciesImpl _value,
      $Res Function(_$ModificationPoliciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancellation = freezed,
    Object? modification = freezed,
  }) {
    return _then(_$ModificationPoliciesImpl(
      cancellation: freezed == cancellation
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as bool?,
      modification: freezed == modification
          ? _value.modification
          : modification // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModificationPoliciesImpl implements _ModificationPolicies {
  _$ModificationPoliciesImpl(
      {@HiveField(0) this.cancellation, @HiveField(1) this.modification});

  factory _$ModificationPoliciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModificationPoliciesImplFromJson(json);

  @override
  @HiveField(0)
  final bool? cancellation;
  @override
  @HiveField(1)
  final bool? modification;

  @override
  String toString() {
    return 'ModificationPolicies(cancellation: $cancellation, modification: $modification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModificationPoliciesImpl &&
            (identical(other.cancellation, cancellation) ||
                other.cancellation == cancellation) &&
            (identical(other.modification, modification) ||
                other.modification == modification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cancellation, modification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ModificationPoliciesImplCopyWith<_$ModificationPoliciesImpl>
      get copyWith =>
          __$$ModificationPoliciesImplCopyWithImpl<_$ModificationPoliciesImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ModificationPoliciesImplToJson(
      this,
    );
  }
}

abstract class _ModificationPolicies implements ModificationPolicies {
  factory _ModificationPolicies(
      {@HiveField(0) final bool? cancellation,
      @HiveField(1) final bool? modification}) = _$ModificationPoliciesImpl;

  factory _ModificationPolicies.fromJson(Map<String, dynamic> json) =
      _$ModificationPoliciesImpl.fromJson;

  @override
  @HiveField(0)
  bool? get cancellation;
  @override
  @HiveField(1)
  bool? get modification;
  @override
  @JsonKey(ignore: true)
  _$$ModificationPoliciesImplCopyWith<_$ModificationPoliciesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
