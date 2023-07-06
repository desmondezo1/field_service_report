import 'package:intl/intl.dart';

class getDate {
  static String getTodayFormatted() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('dd_MMM_yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  static int getMonth() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('M');
    String monthNumber = formatter.format(now);
    int month = int.parse(monthNumber);
    return month;
  }

  static int getYear() {
    DateTime now = DateTime.now();
    DateFormat formatter = DateFormat('y');
    String yearNumber = formatter.format(now);
    int year = int.parse(yearNumber);
    return year;
  }
}
