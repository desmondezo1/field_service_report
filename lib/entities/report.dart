import 'package:hive/hive.dart';

part 'report.g.dart';

@HiveType(typeId: 1)
class Report extends HiveObject {
  @HiveField(0)
  int? hours;

  @HiveField(1)
  int? videos;

  @HiveField(2)
  int? placements;

  @HiveField(3)
  int?
      bibleStudies; //when last convo is updated, we increase number for that day, based on status of the contact.

  @HiveField(4)
  int?
      returnVisits; // when last convo is updated, we increase number for that day, based on status of the contact.

  @HiveField(5)
  int? month;

  @HiveField(6)
  int? year;

  @HiveField(7)
  DateTime? createdAt;

  @HiveField(8)
  DateTime? updatedAt;

  @HiveField(9)
  int? minutes;
}
