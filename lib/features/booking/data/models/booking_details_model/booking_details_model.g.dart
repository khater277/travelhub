// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingDetailsModelAdapter extends TypeAdapter<BookingDetailsModel> {
  @override
  final int typeId = 51;

  @override
  BookingDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookingDetailsModel(
      bookingId: fields[0] as String?,
      hotelId: fields[1] as int?,
      createdAt: fields[2] as String?,
      firstName: fields[3] as String?,
      lastName: fields[4] as String?,
      checkIn: fields[5] as String?,
      checkOut: fields[6] as String?,
      adults: fields[7] as int?,
      children: fields[8] as int?,
      category: fields[9] as String?,
      board: fields[10] as String?,
      price: fields[11] as String?,
      type: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, BookingDetailsModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.bookingId)
      ..writeByte(1)
      ..write(obj.hotelId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.firstName)
      ..writeByte(4)
      ..write(obj.lastName)
      ..writeByte(5)
      ..write(obj.checkIn)
      ..writeByte(6)
      ..write(obj.checkOut)
      ..writeByte(7)
      ..write(obj.adults)
      ..writeByte(8)
      ..write(obj.children)
      ..writeByte(9)
      ..write(obj.category)
      ..writeByte(10)
      ..write(obj.board)
      ..writeByte(11)
      ..write(obj.price)
      ..writeByte(12)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingDetailsModelImpl _$$BookingDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingDetailsModelImpl(
      bookingId: json['bookingId'] as String?,
      hotelId: json['hotelId'] as int?,
      createdAt: json['createdAt'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      checkIn: json['checkIn'] as String?,
      checkOut: json['checkOut'] as String?,
      adults: json['adults'] as int?,
      children: json['children'] as int?,
      category: json['category'] as String?,
      board: json['board'] as String?,
      price: json['price'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$BookingDetailsModelImplToJson(
        _$BookingDetailsModelImpl instance) =>
    <String, dynamic>{
      'bookingId': instance.bookingId,
      'hotelId': instance.hotelId,
      'createdAt': instance.createdAt,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'checkIn': instance.checkIn,
      'checkOut': instance.checkOut,
      'adults': instance.adults,
      'children': instance.children,
      'category': instance.category,
      'board': instance.board,
      'price': instance.price,
      'type': instance.type,
    };
