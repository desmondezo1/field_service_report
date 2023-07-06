import 'package:hive/hive.dart';
part 'contact.g.dart';

@HiveType(typeId: 0)
class Contacts extends HiveObject {
  @HiveField(0)
  String? name;

  @HiveField(1)
  String? address;

  @HiveField(2)
  String? geolocation;

  @HiveField(3)
  String? status;

  @HiveField(4)
  String? lastConversation;

  @HiveField(5)
  String? publication;

  @HiveField(6)
  DateTime? updatedAt;

  @HiveField(7)
  DateTime? createdAt;
}
