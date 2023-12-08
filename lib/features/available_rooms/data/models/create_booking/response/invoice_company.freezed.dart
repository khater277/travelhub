// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceCompany _$InvoiceCompanyFromJson(Map<String, dynamic> json) {
  return _InvoiceCompany.fromJson(json);
}

/// @nodoc
mixin _$InvoiceCompany {
  @HiveField(0)
  String? get code => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get company => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get registrationNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceCompanyCopyWith<InvoiceCompany> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceCompanyCopyWith<$Res> {
  factory $InvoiceCompanyCopyWith(
          InvoiceCompany value, $Res Function(InvoiceCompany) then) =
      _$InvoiceCompanyCopyWithImpl<$Res, InvoiceCompany>;
  @useResult
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? company,
      @HiveField(2) String? registrationNumber});
}

/// @nodoc
class _$InvoiceCompanyCopyWithImpl<$Res, $Val extends InvoiceCompany>
    implements $InvoiceCompanyCopyWith<$Res> {
  _$InvoiceCompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? company = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvoiceCompanyImplCopyWith<$Res>
    implements $InvoiceCompanyCopyWith<$Res> {
  factory _$$InvoiceCompanyImplCopyWith(_$InvoiceCompanyImpl value,
          $Res Function(_$InvoiceCompanyImpl) then) =
      __$$InvoiceCompanyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? code,
      @HiveField(1) String? company,
      @HiveField(2) String? registrationNumber});
}

/// @nodoc
class __$$InvoiceCompanyImplCopyWithImpl<$Res>
    extends _$InvoiceCompanyCopyWithImpl<$Res, _$InvoiceCompanyImpl>
    implements _$$InvoiceCompanyImplCopyWith<$Res> {
  __$$InvoiceCompanyImplCopyWithImpl(
      _$InvoiceCompanyImpl _value, $Res Function(_$InvoiceCompanyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? company = freezed,
    Object? registrationNumber = freezed,
  }) {
    return _then(_$InvoiceCompanyImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationNumber: freezed == registrationNumber
          ? _value.registrationNumber
          : registrationNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvoiceCompanyImpl implements _InvoiceCompany {
  _$InvoiceCompanyImpl(
      {@HiveField(0) this.code,
      @HiveField(1) this.company,
      @HiveField(2) this.registrationNumber});

  factory _$InvoiceCompanyImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvoiceCompanyImplFromJson(json);

  @override
  @HiveField(0)
  final String? code;
  @override
  @HiveField(1)
  final String? company;
  @override
  @HiveField(2)
  final String? registrationNumber;

  @override
  String toString() {
    return 'InvoiceCompany(code: $code, company: $company, registrationNumber: $registrationNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceCompanyImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.registrationNumber, registrationNumber) ||
                other.registrationNumber == registrationNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, company, registrationNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceCompanyImplCopyWith<_$InvoiceCompanyImpl> get copyWith =>
      __$$InvoiceCompanyImplCopyWithImpl<_$InvoiceCompanyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceCompanyImplToJson(
      this,
    );
  }
}

abstract class _InvoiceCompany implements InvoiceCompany {
  factory _InvoiceCompany(
      {@HiveField(0) final String? code,
      @HiveField(1) final String? company,
      @HiveField(2) final String? registrationNumber}) = _$InvoiceCompanyImpl;

  factory _InvoiceCompany.fromJson(Map<String, dynamic> json) =
      _$InvoiceCompanyImpl.fromJson;

  @override
  @HiveField(0)
  String? get code;
  @override
  @HiveField(1)
  String? get company;
  @override
  @HiveField(2)
  String? get registrationNumber;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceCompanyImplCopyWith<_$InvoiceCompanyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
