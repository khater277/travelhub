// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingsListModel {
  @HiveField(0)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(1)
  List<BookingDetailsModel>? get list => throw _privateConstructorUsedError;
  @HiveField(2)
  List<PopUpInfo>? get popUpList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingsListModelCopyWith<BookingsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingsListModelCopyWith<$Res> {
  factory $BookingsListModelCopyWith(
          BookingsListModel value, $Res Function(BookingsListModel) then) =
      _$BookingsListModelCopyWithImpl<$Res, BookingsListModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) List<BookingDetailsModel>? list,
      @HiveField(2) List<PopUpInfo>? popUpList});
}

/// @nodoc
class _$BookingsListModelCopyWithImpl<$Res, $Val extends BookingsListModel>
    implements $BookingsListModelCopyWith<$Res> {
  _$BookingsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
    Object? popUpList = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookingDetailsModel>?,
      popUpList: freezed == popUpList
          ? _value.popUpList
          : popUpList // ignore: cast_nullable_to_non_nullable
              as List<PopUpInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingsListModelImplCopyWith<$Res>
    implements $BookingsListModelCopyWith<$Res> {
  factory _$$BookingsListModelImplCopyWith(_$BookingsListModelImpl value,
          $Res Function(_$BookingsListModelImpl) then) =
      __$$BookingsListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? name,
      @HiveField(1) List<BookingDetailsModel>? list,
      @HiveField(2) List<PopUpInfo>? popUpList});
}

/// @nodoc
class __$$BookingsListModelImplCopyWithImpl<$Res>
    extends _$BookingsListModelCopyWithImpl<$Res, _$BookingsListModelImpl>
    implements _$$BookingsListModelImplCopyWith<$Res> {
  __$$BookingsListModelImplCopyWithImpl(_$BookingsListModelImpl _value,
      $Res Function(_$BookingsListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? list = freezed,
    Object? popUpList = freezed,
  }) {
    return _then(_$BookingsListModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<BookingDetailsModel>?,
      popUpList: freezed == popUpList
          ? _value.popUpList
          : popUpList // ignore: cast_nullable_to_non_nullable
              as List<PopUpInfo>?,
    ));
  }
}

/// @nodoc

class _$BookingsListModelImpl implements _BookingsListModel {
  _$BookingsListModelImpl(
      {@HiveField(0) this.name,
      @HiveField(1) this.list,
      @HiveField(2) this.popUpList});

  @override
  @HiveField(0)
  final String? name;
  @override
  @HiveField(1)
  final List<BookingDetailsModel>? list;
  @override
  @HiveField(2)
  final List<PopUpInfo>? popUpList;

  @override
  String toString() {
    return 'BookingsListModel(name: $name, list: $list, popUpList: $popUpList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingsListModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality().equals(other.popUpList, popUpList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(popUpList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingsListModelImplCopyWith<_$BookingsListModelImpl> get copyWith =>
      __$$BookingsListModelImplCopyWithImpl<_$BookingsListModelImpl>(
          this, _$identity);
}

abstract class _BookingsListModel implements BookingsListModel {
  factory _BookingsListModel(
          {@HiveField(0) final String? name,
          @HiveField(1) final List<BookingDetailsModel>? list,
          @HiveField(2) final List<PopUpInfo>? popUpList}) =
      _$BookingsListModelImpl;

  @override
  @HiveField(0)
  String? get name;
  @override
  @HiveField(1)
  List<BookingDetailsModel>? get list;
  @override
  @HiveField(2)
  List<PopUpInfo>? get popUpList;
  @override
  @JsonKey(ignore: true)
  _$$BookingsListModelImplCopyWith<_$BookingsListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
