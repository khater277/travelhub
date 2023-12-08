// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facilities_params_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilitiesParamsModel _$FacilitiesParamsModelFromJson(
    Map<String, dynamic> json) {
  return _FacilitiesParamsModel.fromJson(json);
}

/// @nodoc
mixin _$FacilitiesParamsModel {
  String? get fields => throw _privateConstructorUsedError;
  String? get from => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesParamsModelCopyWith<FacilitiesParamsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesParamsModelCopyWith<$Res> {
  factory $FacilitiesParamsModelCopyWith(FacilitiesParamsModel value,
          $Res Function(FacilitiesParamsModel) then) =
      _$FacilitiesParamsModelCopyWithImpl<$Res, FacilitiesParamsModel>;
  @useResult
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class _$FacilitiesParamsModelCopyWithImpl<$Res,
        $Val extends FacilitiesParamsModel>
    implements $FacilitiesParamsModelCopyWith<$Res> {
  _$FacilitiesParamsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilitiesParamsModelImplCopyWith<$Res>
    implements $FacilitiesParamsModelCopyWith<$Res> {
  factory _$$FacilitiesParamsModelImplCopyWith(
          _$FacilitiesParamsModelImpl value,
          $Res Function(_$FacilitiesParamsModelImpl) then) =
      __$$FacilitiesParamsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? fields, String? from, String? to});
}

/// @nodoc
class __$$FacilitiesParamsModelImplCopyWithImpl<$Res>
    extends _$FacilitiesParamsModelCopyWithImpl<$Res,
        _$FacilitiesParamsModelImpl>
    implements _$$FacilitiesParamsModelImplCopyWith<$Res> {
  __$$FacilitiesParamsModelImplCopyWithImpl(_$FacilitiesParamsModelImpl _value,
      $Res Function(_$FacilitiesParamsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$FacilitiesParamsModelImpl(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilitiesParamsModelImpl implements _FacilitiesParamsModel {
  _$FacilitiesParamsModelImpl({this.fields, this.from, this.to});

  factory _$FacilitiesParamsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilitiesParamsModelImplFromJson(json);

  @override
  final String? fields;
  @override
  final String? from;
  @override
  final String? to;

  @override
  String toString() {
    return 'FacilitiesParamsModel(fields: $fields, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitiesParamsModelImpl &&
            (identical(other.fields, fields) || other.fields == fields) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fields, from, to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitiesParamsModelImplCopyWith<_$FacilitiesParamsModelImpl>
      get copyWith => __$$FacilitiesParamsModelImplCopyWithImpl<
          _$FacilitiesParamsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilitiesParamsModelImplToJson(
      this,
    );
  }
}

abstract class _FacilitiesParamsModel implements FacilitiesParamsModel {
  factory _FacilitiesParamsModel(
      {final String? fields,
      final String? from,
      final String? to}) = _$FacilitiesParamsModelImpl;

  factory _FacilitiesParamsModel.fromJson(Map<String, dynamic> json) =
      _$FacilitiesParamsModelImpl.fromJson;

  @override
  String? get fields;
  @override
  String? get from;
  @override
  String? get to;
  @override
  @JsonKey(ignore: true)
  _$$FacilitiesParamsModelImplCopyWith<_$FacilitiesParamsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
