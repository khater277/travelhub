import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'address.dart';
import 'city.dart';
import 'coordinates.dart';
import 'description.dart';
import 'facility.dart';
import 'image.dart';
import 'name.dart';
import 'phone.dart';

part 'hotel.freezed.dart';
part 'hotel.g.dart';

@HiveType(typeId: 10)
@freezed
class Hotel with _$Hotel {
  factory Hotel({
    @HiveField(0) int? code,
    @HiveField(1) Name? name,
    @HiveField(2) Description? description,
    @HiveField(3) String? categoryCode,
    @HiveField(4) String? countryCode,
    @HiveField(5) Coordinates? coordinates,
    @HiveField(6) Address? address,
    @HiveField(7) City? city,
    @HiveField(8) String? email,
    @HiveField(9) List<Phone>? phones,
    @HiveField(10) List<Facility>? facilities,
    @HiveField(11) List<Image>? images,
  }) = _Hotel;

  factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
