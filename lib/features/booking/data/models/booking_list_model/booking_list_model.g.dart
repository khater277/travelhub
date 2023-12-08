// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingsListModelAdapter extends TypeAdapter<BookingsListModel> {
  @override
  final int typeId = 52;

  @override
  BookingsListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return BookingsListModel(
      name: fields[0] as String?,
      list: (fields[1] as List?)?.cast<BookingDetailsModel>(),
      popUpList: (fields[2] as List?)?.cast<PopUpInfo>(),
    );
  }

  @override
  void write(BinaryWriter writer, BookingsListModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.list)
      ..writeByte(2)
      ..write(obj.popUpList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingsListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
