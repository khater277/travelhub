// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BookingAdapter extends TypeAdapter<Booking> {
  @override
  final int typeId = 52;

  @override
  Booking read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Booking(
      reference: fields[0] as String?,
      clientReference: fields[1] as String?,
      creationDate: fields[2] as String?,
      status: fields[3] as String?,
      modificationPolicies: fields[4] as ModificationPolicies?,
      creationUser: fields[5] as String?,
      holder: fields[6] as Holder?,
      bookingHotel: fields[7] as BookingHotel?,
      remark: fields[8] as String?,
      invoiceCompany: fields[9] as InvoiceCompany?,
      totalNet: fields[10] as double?,
      pendingAmount: fields[11] as double?,
      currency: fields[12] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Booking obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.reference)
      ..writeByte(1)
      ..write(obj.clientReference)
      ..writeByte(2)
      ..write(obj.creationDate)
      ..writeByte(3)
      ..write(obj.status)
      ..writeByte(4)
      ..write(obj.modificationPolicies)
      ..writeByte(5)
      ..write(obj.creationUser)
      ..writeByte(6)
      ..write(obj.holder)
      ..writeByte(7)
      ..write(obj.bookingHotel)
      ..writeByte(8)
      ..write(obj.remark)
      ..writeByte(9)
      ..write(obj.invoiceCompany)
      ..writeByte(10)
      ..write(obj.totalNet)
      ..writeByte(11)
      ..write(obj.pendingAmount)
      ..writeByte(12)
      ..write(obj.currency);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BookingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      reference: json['reference'] as String?,
      clientReference: json['clientReference'] as String?,
      creationDate: json['creationDate'] as String?,
      status: json['status'] as String?,
      modificationPolicies: json['modificationPolicies'] == null
          ? null
          : ModificationPolicies.fromJson(
              json['modificationPolicies'] as Map<String, dynamic>),
      creationUser: json['creationUser'] as String?,
      holder: json['holder'] == null
          ? null
          : Holder.fromJson(json['holder'] as Map<String, dynamic>),
      bookingHotel: json['hotel'] == null
          ? null
          : BookingHotel.fromJson(json['hotel'] as Map<String, dynamic>),
      remark: json['remark'] as String?,
      invoiceCompany: json['invoiceCompany'] == null
          ? null
          : InvoiceCompany.fromJson(
              json['invoiceCompany'] as Map<String, dynamic>),
      totalNet: (json['totalNet'] as num?)?.toDouble(),
      pendingAmount: (json['pendingAmount'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'reference': instance.reference,
      'clientReference': instance.clientReference,
      'creationDate': instance.creationDate,
      'status': instance.status,
      'modificationPolicies': instance.modificationPolicies,
      'creationUser': instance.creationUser,
      'holder': instance.holder,
      'hotel': instance.bookingHotel,
      'remark': instance.remark,
      'invoiceCompany': instance.invoiceCompany,
      'totalNet': instance.totalNet,
      'pendingAmount': instance.pendingAmount,
      'currency': instance.currency,
    };
