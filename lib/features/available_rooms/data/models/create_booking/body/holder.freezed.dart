// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Holder _$HolderFromJson(Map<String, dynamic> json) {
  return _Holder.fromJson(json);
}

/// @nodoc
mixin _$Holder {
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HolderCopyWith<Holder> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolderCopyWith<$Res> {
  factory $HolderCopyWith(Holder value, $Res Function(Holder) then) =
      _$HolderCopyWithImpl<$Res, Holder>;
  @useResult
  $Res call({String? name, String? surname});
}

/// @nodoc
class _$HolderCopyWithImpl<$Res, $Val extends Holder>
    implements $HolderCopyWith<$Res> {
  _$HolderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolderImplCopyWith<$Res> implements $HolderCopyWith<$Res> {
  factory _$$HolderImplCopyWith(
          _$HolderImpl value, $Res Function(_$HolderImpl) then) =
      __$$HolderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? surname});
}

/// @nodoc
class __$$HolderImplCopyWithImpl<$Res>
    extends _$HolderCopyWithImpl<$Res, _$HolderImpl>
    implements _$$HolderImplCopyWith<$Res> {
  __$$HolderImplCopyWithImpl(
      _$HolderImpl _value, $Res Function(_$HolderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$HolderImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HolderImpl implements _Holder {
  _$HolderImpl({this.name, this.surname});

  factory _$HolderImpl.fromJson(Map<String, dynamic> json) =>
      _$$HolderImplFromJson(json);

  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'Holder(name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolderImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HolderImplCopyWith<_$HolderImpl> get copyWith =>
      __$$HolderImplCopyWithImpl<_$HolderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HolderImplToJson(
      this,
    );
  }
}

abstract class _Holder implements Holder {
  factory _Holder({final String? name, final String? surname}) = _$HolderImpl;

  factory _Holder.fromJson(Map<String, dynamic> json) = _$HolderImpl.fromJson;

  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$HolderImplCopyWith<_$HolderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
