import 'package:hive/hive.dart';

import '../entities/contact.dart';
import '../entities/report.dart';

class Boxes {
  static Box<Contacts> getContacts() => Hive.box('Contacts');
  static Box<Report> getReports() => Hive.box('Reports');
}
