import 'package:isar/isar.dart';
part 'report.g.dart';

@collection
class Report {
  Id id = Isar.autoIncrement;

  int? hours;

  int? videos;

  int? publications;

  int?
      bibleStudies; // when last convo is updated, we increase number for that day, based on status of the contact.

  int?
      returnVisits; // when last convo is updated, we increase number for that day, based on status of the contact.

  int? month;

  int? year;

  DateTime? createdAt;

  DateTime? updatedAt;
}
