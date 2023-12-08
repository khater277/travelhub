// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @HiveField(0)
  String? get imageTypeCode => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get path => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get order => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get visualOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
  }) {
    return _then(_value.copyWith(
      imageTypeCode: freezed == imageTypeCode
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: freezed == visualOrder
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? imageTypeCode,
      @HiveField(1) String? path,
      @HiveField(2) int? order,
      @HiveField(3) int? visualOrder});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageTypeCode = freezed,
    Object? path = freezed,
    Object? order = freezed,
    Object? visualOrder = freezed,
  }) {
    return _then(_$ImageImpl(
      imageTypeCode: freezed == imageTypeCode
          ? _value.imageTypeCode
          : imageTypeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      visualOrder: freezed == visualOrder
          ? _value.visualOrder
          : visualOrder // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  _$ImageImpl(
      {@HiveField(0) this.imageTypeCode,
      @HiveField(1) this.path,
      @HiveField(2) this.order,
      @HiveField(3) this.visualOrder});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @HiveField(0)
  final String? imageTypeCode;
  @override
  @HiveField(1)
  final String? path;
  @override
  @HiveField(2)
  final int? order;
  @override
  @HiveField(3)
  final int? visualOrder;

  @override
  String toString() {
    return 'Image(imageTypeCode: $imageTypeCode, path: $path, order: $order, visualOrder: $visualOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.imageTypeCode, imageTypeCode) ||
                other.imageTypeCode == imageTypeCode) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.visualOrder, visualOrder) ||
                other.visualOrder == visualOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, imageTypeCode, path, order, visualOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  factory _Image(
      {@HiveField(0) final String? imageTypeCode,
      @HiveField(1) final String? path,
      @HiveField(2) final int? order,
      @HiveField(3) final int? visualOrder}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @HiveField(0)
  String? get imageTypeCode;
  @override
  @HiveField(1)
  String? get path;
  @override
  @HiveField(2)
  int? get order;
  @override
  @HiveField(3)
  int? get visualOrder;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
