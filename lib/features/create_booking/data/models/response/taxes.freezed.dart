// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Taxes _$TaxesFromJson(Map<String, dynamic> json) {
  return _Taxes.fromJson(json);
}

/// @nodoc
mixin _$Taxes {
  @HiveField(0)
  List<Tax>? get taxes => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get allIncluded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxesCopyWith<Taxes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxesCopyWith<$Res> {
  factory $TaxesCopyWith(Taxes value, $Res Function(Taxes) then) =
      _$TaxesCopyWithImpl<$Res, Taxes>;
  @useResult
  $Res call({@HiveField(0) List<Tax>? taxes, @HiveField(1) bool? allIncluded});
}

/// @nodoc
class _$TaxesCopyWithImpl<$Res, $Val extends Taxes>
    implements $TaxesCopyWith<$Res> {
  _$TaxesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxes = freezed,
    Object? allIncluded = freezed,
  }) {
    return _then(_value.copyWith(
      taxes: freezed == taxes
          ? _value.taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      allIncluded: freezed == allIncluded
          ? _value.allIncluded
          : allIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaxesImplCopyWith<$Res> implements $TaxesCopyWith<$Res> {
  factory _$$TaxesImplCopyWith(
          _$TaxesImpl value, $Res Function(_$TaxesImpl) then) =
      __$$TaxesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<Tax>? taxes, @HiveField(1) bool? allIncluded});
}

/// @nodoc
class __$$TaxesImplCopyWithImpl<$Res>
    extends _$TaxesCopyWithImpl<$Res, _$TaxesImpl>
    implements _$$TaxesImplCopyWith<$Res> {
  __$$TaxesImplCopyWithImpl(
      _$TaxesImpl _value, $Res Function(_$TaxesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taxes = freezed,
    Object? allIncluded = freezed,
  }) {
    return _then(_$TaxesImpl(
      taxes: freezed == taxes
          ? _value._taxes
          : taxes // ignore: cast_nullable_to_non_nullable
              as List<Tax>?,
      allIncluded: freezed == allIncluded
          ? _value.allIncluded
          : allIncluded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaxesImpl implements _Taxes {
  _$TaxesImpl(
      {@HiveField(0) final List<Tax>? taxes, @HiveField(1) this.allIncluded})
      : _taxes = taxes;

  factory _$TaxesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxesImplFromJson(json);

  final List<Tax>? _taxes;
  @override
  @HiveField(0)
  List<Tax>? get taxes {
    final value = _taxes;
    if (value == null) return null;
    if (_taxes is EqualUnmodifiableListView) return _taxes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @HiveField(1)
  final bool? allIncluded;

  @override
  String toString() {
    return 'Taxes(taxes: $taxes, allIncluded: $allIncluded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxesImpl &&
            const DeepCollectionEquality().equals(other._taxes, _taxes) &&
            (identical(other.allIncluded, allIncluded) ||
                other.allIncluded == allIncluded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_taxes), allIncluded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxesImplCopyWith<_$TaxesImpl> get copyWith =>
      __$$TaxesImplCopyWithImpl<_$TaxesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxesImplToJson(
      this,
    );
  }
}

abstract class _Taxes implements Taxes {
  factory _Taxes(
      {@HiveField(0) final List<Tax>? taxes,
      @HiveField(1) final bool? allIncluded}) = _$TaxesImpl;

  factory _Taxes.fromJson(Map<String, dynamic> json) = _$TaxesImpl.fromJson;

  @override
  @HiveField(0)
  List<Tax>? get taxes;
  @override
  @HiveField(1)
  bool? get allIncluded;
  @override
  @JsonKey(ignore: true)
  _$$TaxesImplCopyWith<_$TaxesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
