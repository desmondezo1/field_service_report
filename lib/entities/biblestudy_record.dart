import 'package:hive/hive.dart';
part 'biblestudy_record.g.dart';

@HiveType(typeId: 2)
class Biblestudy_record extends HiveObject {
  @HiveField(0)
  String? contact_id;

  @HiveField(1)
  int? month;

  @HiveField(2)
  DateTime? createdAt;

  @HiveField(3)
  String? status;
}
