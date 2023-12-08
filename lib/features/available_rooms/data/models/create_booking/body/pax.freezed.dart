// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pax.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pax _$PaxFromJson(Map<String, dynamic> json) {
  return _Pax.fromJson(json);
}

/// @nodoc
mixin _$Pax {
  int? get roomId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaxCopyWith<Pax> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaxCopyWith<$Res> {
  factory $PaxCopyWith(Pax value, $Res Function(Pax) then) =
      _$PaxCopyWithImpl<$Res, Pax>;
  @useResult
  $Res call({int? roomId, String? type, String? name, String? surname});
}

/// @nodoc
class _$PaxCopyWithImpl<$Res, $Val extends Pax> implements $PaxCopyWith<$Res> {
  _$PaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$PaxImplCopyWith<$Res> implements $PaxCopyWith<$Res> {
  factory _$$PaxImplCopyWith(_$PaxImpl value, $Res Function(_$PaxImpl) then) =
      __$$PaxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? roomId, String? type, String? name, String? surname});
}

/// @nodoc
class __$$PaxImplCopyWithImpl<$Res> extends _$PaxCopyWithImpl<$Res, _$PaxImpl>
    implements _$$PaxImplCopyWith<$Res> {
  __$$PaxImplCopyWithImpl(_$PaxImpl _value, $Res Function(_$PaxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = freezed,
    Object? type = freezed,
    Object? name = freezed,
    Object? surname = freezed,
  }) {
    return _then(_$PaxImpl(
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$PaxImpl implements _Pax {
  _$PaxImpl({this.roomId, this.type, this.name, this.surname});

  factory _$PaxImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaxImplFromJson(json);

  @override
  final int? roomId;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final String? surname;

  @override
  String toString() {
    return 'Pax(roomId: $roomId, type: $type, name: $name, surname: $surname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaxImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roomId, type, name, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaxImplCopyWith<_$PaxImpl> get copyWith =>
      __$$PaxImplCopyWithImpl<_$PaxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaxImplToJson(
      this,
    );
  }
}

abstract class _Pax implements Pax {
  factory _Pax(
      {final int? roomId,
      final String? type,
      final String? name,
      final String? surname}) = _$PaxImpl;

  factory _Pax.fromJson(Map<String, dynamic> json) = _$PaxImpl.fromJson;

  @override
  int? get roomId;
  @override
  String? get type;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  @JsonKey(ignore: true)
  _$$PaxImplCopyWith<_$PaxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
