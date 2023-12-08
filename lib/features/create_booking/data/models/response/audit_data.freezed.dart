// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audit_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuditData _$AuditDataFromJson(Map<String, dynamic> json) {
  return _AuditData.fromJson(json);
}

/// @nodoc
mixin _$AuditData {
  @HiveField(0)
  String? get processTime => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get timestamp => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get requestHost => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get serverId => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get environment => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get release => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get internal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuditDataCopyWith<AuditData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuditDataCopyWith<$Res> {
  factory $AuditDataCopyWith(AuditData value, $Res Function(AuditData) then) =
      _$AuditDataCopyWithImpl<$Res, AuditData>;
  @useResult
  $Res call(
      {@HiveField(0) String? processTime,
      @HiveField(1) String? timestamp,
      @HiveField(2) String? requestHost,
      @HiveField(3) String? serverId,
      @HiveField(4) String? environment,
      @HiveField(5) String? release,
      @HiveField(6) String? token,
      @HiveField(7) String? internal});
}

/// @nodoc
class _$AuditDataCopyWithImpl<$Res, $Val extends AuditData>
    implements $AuditDataCopyWith<$Res> {
  _$AuditDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processTime = freezed,
    Object? timestamp = freezed,
    Object? requestHost = freezed,
    Object? serverId = freezed,
    Object? environment = freezed,
    Object? release = freezed,
    Object? token = freezed,
    Object? internal = freezed,
  }) {
    return _then(_value.copyWith(
      processTime: freezed == processTime
          ? _value.processTime
          : processTime // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      requestHost: freezed == requestHost
          ? _value.requestHost
          : requestHost // ignore: cast_nullable_to_non_nullable
              as String?,
      serverId: freezed == serverId
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      release: freezed == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: freezed == internal
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuditDataImplCopyWith<$Res>
    implements $AuditDataCopyWith<$Res> {
  factory _$$AuditDataImplCopyWith(
          _$AuditDataImpl value, $Res Function(_$AuditDataImpl) then) =
      __$$AuditDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? processTime,
      @HiveField(1) String? timestamp,
      @HiveField(2) String? requestHost,
      @HiveField(3) String? serverId,
      @HiveField(4) String? environment,
      @HiveField(5) String? release,
      @HiveField(6) String? token,
      @HiveField(7) String? internal});
}

/// @nodoc
class __$$AuditDataImplCopyWithImpl<$Res>
    extends _$AuditDataCopyWithImpl<$Res, _$AuditDataImpl>
    implements _$$AuditDataImplCopyWith<$Res> {
  __$$AuditDataImplCopyWithImpl(
      _$AuditDataImpl _value, $Res Function(_$AuditDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processTime = freezed,
    Object? timestamp = freezed,
    Object? requestHost = freezed,
    Object? serverId = freezed,
    Object? environment = freezed,
    Object? release = freezed,
    Object? token = freezed,
    Object? internal = freezed,
  }) {
    return _then(_$AuditDataImpl(
      processTime: freezed == processTime
          ? _value.processTime
          : processTime // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      requestHost: freezed == requestHost
          ? _value.requestHost
          : requestHost // ignore: cast_nullable_to_non_nullable
              as String?,
      serverId: freezed == serverId
          ? _value.serverId
          : serverId // ignore: cast_nullable_to_non_nullable
              as String?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as String?,
      release: freezed == release
          ? _value.release
          : release // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      internal: freezed == internal
          ? _value.internal
          : internal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuditDataImpl implements _AuditData {
  _$AuditDataImpl(
      {@HiveField(0) this.processTime,
      @HiveField(1) this.timestamp,
      @HiveField(2) this.requestHost,
      @HiveField(3) this.serverId,
      @HiveField(4) this.environment,
      @HiveField(5) this.release,
      @HiveField(6) this.token,
      @HiveField(7) this.internal});

  factory _$AuditDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuditDataImplFromJson(json);

  @override
  @HiveField(0)
  final String? processTime;
  @override
  @HiveField(1)
  final String? timestamp;
  @override
  @HiveField(2)
  final String? requestHost;
  @override
  @HiveField(3)
  final String? serverId;
  @override
  @HiveField(4)
  final String? environment;
  @override
  @HiveField(5)
  final String? release;
  @override
  @HiveField(6)
  final String? token;
  @override
  @HiveField(7)
  final String? internal;

  @override
  String toString() {
    return 'AuditData(processTime: $processTime, timestamp: $timestamp, requestHost: $requestHost, serverId: $serverId, environment: $environment, release: $release, token: $token, internal: $internal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuditDataImpl &&
            (identical(other.processTime, processTime) ||
                other.processTime == processTime) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.requestHost, requestHost) ||
                other.requestHost == requestHost) &&
            (identical(other.serverId, serverId) ||
                other.serverId == serverId) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.release, release) || other.release == release) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.internal, internal) ||
                other.internal == internal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, processTime, timestamp,
      requestHost, serverId, environment, release, token, internal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuditDataImplCopyWith<_$AuditDataImpl> get copyWith =>
      __$$AuditDataImplCopyWithImpl<_$AuditDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuditDataImplToJson(
      this,
    );
  }
}

abstract class _AuditData implements AuditData {
  factory _AuditData(
      {@HiveField(0) final String? processTime,
      @HiveField(1) final String? timestamp,
      @HiveField(2) final String? requestHost,
      @HiveField(3) final String? serverId,
      @HiveField(4) final String? environment,
      @HiveField(5) final String? release,
      @HiveField(6) final String? token,
      @HiveField(7) final String? internal}) = _$AuditDataImpl;

  factory _AuditData.fromJson(Map<String, dynamic> json) =
      _$AuditDataImpl.fromJson;

  @override
  @HiveField(0)
  String? get processTime;
  @override
  @HiveField(1)
  String? get timestamp;
  @override
  @HiveField(2)
  String? get requestHost;
  @override
  @HiveField(3)
  String? get serverId;
  @override
  @HiveField(4)
  String? get environment;
  @override
  @HiveField(5)
  String? get release;
  @override
  @HiveField(6)
  String? get token;
  @override
  @HiveField(7)
  String? get internal;
  @override
  @JsonKey(ignore: true)
  _$$AuditDataImplCopyWith<_$AuditDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
