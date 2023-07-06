// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biblestudy_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BiblestudyrecordAdapter extends TypeAdapter<Biblestudy_record> {
  @override
  final int typeId = 2;

  @override
  Biblestudy_record read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Biblestudy_record()
      ..contact_id = fields[0] as String?
      ..month = fields[1] as int?
      ..createdAt = fields[2] as DateTime?
      ..status = fields[3] as String?;
  }

  @override
  void write(BinaryWriter writer, Biblestudy_record obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.contact_id)
      ..writeByte(1)
      ..write(obj.month)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BiblestudyrecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
