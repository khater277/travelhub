// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'facilities_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FacilitiesResponseModel _$FacilitiesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _FacilitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$FacilitiesResponseModel {
  @HiveField(0)
  List<FacilityInfo>? get facilities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FacilitiesResponseModelCopyWith<FacilitiesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilitiesResponseModelCopyWith<$Res> {
  factory $FacilitiesResponseModelCopyWith(FacilitiesResponseModel value,
          $Res Function(FacilitiesResponseModel) then) =
      _$FacilitiesResponseModelCopyWithImpl<$Res, FacilitiesResponseModel>;
  @useResult
  $Res call({@HiveField(0) List<FacilityInfo>? facilities});
}

/// @nodoc
class _$FacilitiesResponseModelCopyWithImpl<$Res,
        $Val extends FacilitiesResponseModel>
    implements $FacilitiesResponseModelCopyWith<$Res> {
  _$FacilitiesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_value.copyWith(
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilitiesResponseModelImplCopyWith<$Res>
    implements $FacilitiesResponseModelCopyWith<$Res> {
  factory _$$FacilitiesResponseModelImplCopyWith(
          _$FacilitiesResponseModelImpl value,
          $Res Function(_$FacilitiesResponseModelImpl) then) =
      __$$FacilitiesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) List<FacilityInfo>? facilities});
}

/// @nodoc
class __$$FacilitiesResponseModelImplCopyWithImpl<$Res>
    extends _$FacilitiesResponseModelCopyWithImpl<$Res,
        _$FacilitiesResponseModelImpl>
    implements _$$FacilitiesResponseModelImplCopyWith<$Res> {
  __$$FacilitiesResponseModelImplCopyWithImpl(
      _$FacilitiesResponseModelImpl _value,
      $Res Function(_$FacilitiesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? facilities = freezed,
  }) {
    return _then(_$FacilitiesResponseModelImpl(
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilitiesResponseModelImpl implements _FacilitiesResponseModel {
  _$FacilitiesResponseModelImpl(
      {@HiveField(0) final List<FacilityInfo>? facilities})
      : _facilities = facilities;

  factory _$FacilitiesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilitiesResponseModelImplFromJson(json);

  final List<FacilityInfo>? _facilities;
  @override
  @HiveField(0)
  List<FacilityInfo>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FacilitiesResponseModel(facilities: $facilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilitiesResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_facilities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilitiesResponseModelImplCopyWith<_$FacilitiesResponseModelImpl>
      get copyWith => __$$FacilitiesResponseModelImplCopyWithImpl<
          _$FacilitiesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilitiesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _FacilitiesResponseModel implements FacilitiesResponseModel {
  factory _FacilitiesResponseModel(
          {@HiveField(0) final List<FacilityInfo>? facilities}) =
      _$FacilitiesResponseModelImpl;

  factory _FacilitiesResponseModel.fromJson(Map<String, dynamic> json) =
      _$FacilitiesResponseModelImpl.fromJson;

  @override
  @HiveField(0)
  List<FacilityInfo>? get facilities;
  @override
  @JsonKey(ignore: true)
  _$$FacilitiesResponseModelImplCopyWith<_$FacilitiesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
