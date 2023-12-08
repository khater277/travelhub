import 'package:travelhub/features/booking/data/models/booking_details_model/booking_details_model.dart';
import 'package:travelhub/features/booking/data/models/pop_up_info/pop_up_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'booking_list_model.freezed.dart';
part 'booking_list_model.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
@HiveType(typeId: 52)
class BookingsListModel with _$BookingsListModel {
  factory BookingsListModel({
    @HiveField(0) String? name,
    @HiveField(1) List<BookingDetailsModel>? list,
    @HiveField(2) List<PopUpInfo>? popUpList,
  }) = _BookingsListModel;
}
