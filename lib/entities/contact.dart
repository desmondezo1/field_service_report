import 'package:isar/isar.dart';
part 'contact.g.dart';

@collection
class Contacts {
  Id id = Isar.autoIncrement;

  String? name;

  String? address;

  String? geolocation;

  String? status;

  String? lastConversation;

  String? publication;

  DateTime? updatedAt;

  DateTime? createdAt;
}
