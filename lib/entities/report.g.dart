// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReportAdapter extends TypeAdapter<Report> {
  @override
  final int typeId = 1;

  @override
  Report read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Report()
      ..hours = fields[0] as int?
      ..videos = fields[1] as int?
      ..placements = fields[2] as int?
      ..bibleStudies = fields[3] as int?
      ..returnVisits = fields[4] as int?
      ..month = fields[5] as int?
      ..year = fields[6] as int?
      ..createdAt = fields[7] as DateTime?
      ..updatedAt = fields[8] as DateTime?
      ..minutes = fields[9] as int?;
  }

  @override
  void write(BinaryWriter writer, Report obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.hours)
      ..writeByte(1)
      ..write(obj.videos)
      ..writeByte(2)
      ..write(obj.placements)
      ..writeByte(3)
      ..write(obj.bibleStudies)
      ..writeByte(4)
      ..write(obj.returnVisits)
      ..writeByte(5)
      ..write(obj.month)
      ..writeByte(6)
      ..write(obj.year)
      ..writeByte(7)
      ..write(obj.createdAt)
      ..writeByte(8)
      ..write(obj.updatedAt)
      ..writeByte(9)
      ..write(obj.minutes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReportAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
