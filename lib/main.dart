import 'package:flutter/material.dart';
// import 'package:fs_report/entities/contact.dart';
// import 'package:fs_report/entities/report.dart';
// import 'package:isar/isar.dart';
// import 'package:path_provider/path_provider.dart';
import 'pages/home_page.dart';
import 'pages/addHours_page.dart';
import 'pages/contacts_page.dart';

const List<String> listOfMonths = <String>[
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // final dir = await getApplicationDocumentsDirectory();
  // final isar = await Isar.open(
  //   [ContactsSchema, ReportSchema],
  //   directory: dir.path,
  // );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int __currentMenuIndex = 0;
  void onPageChanged(int index) {
    setState(() {
      __currentMenuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PageController __pageController = PageController();
    return MaterialApp(
      title: 'FS Report',
      home: Scaffold(
        body: SafeArea(
          child: PageView(
            onPageChanged: onPageChanged,
            controller: __pageController,
            children: const <Widget>[
              Home_page(),
              Hours_page(),
              Contacts_page()
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFA35AD0),
          selectedItemColor: Color(0xFFFFFFFF),
          unselectedItemColor: Color(0xFFCEA7E6),
          currentIndex: __currentMenuIndex,
          onTap: (index) {
            setState(() {
              __pageController.animateToPage(
                index,
                duration: Duration(microseconds: 300),
                curve: Curves.easeInOut,
              );
              __currentMenuIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_time_rounded), label: 'Hours'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2_rounded), label: 'Contacts')
          ],
        ),
      ),
    );
  }
}

class SelectMonth extends StatefulWidget {
  const SelectMonth({Key? key}) : super(key: key);

  @override
  State<SelectMonth> createState() => _SelectMonthState();
}

class _SelectMonthState extends State<SelectMonth> {
  String selectedMonth = listOfMonths.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 38),
      child: Row(
        children: [
          PopupMenuButton<String>(
            itemBuilder: (context) {
              return listOfMonths.map((str) {
                return PopupMenuItem(
                  value: str,
                  child: Text(
                    str,
                    style: const TextStyle(fontFamily: 'Roboto', fontSize: 30),
                  ),
                );
              }).toList();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  selectedMonth,
                  style: const TextStyle(fontFamily: 'Roboto', fontSize: 30),
                ),
                const Icon(Icons.expand_more),
              ],
            ),
            onSelected: (v) {
              setState(() {
                selectedMonth = v;
              });
            },
          )
        ],
      ),
    );
  }
}

class Report extends StatelessWidget {
  const Report({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // margin: const EdgeInsets.only(left: 38),
      // padding: const EdgeInsets.all(20.0),
      scrollDirection: Axis.horizontal,
      children: [
        Expanded(
          child: Card(
            margin: EdgeInsets.only(left: 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color(0xFFFBDE77),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(33, 32, 33, 0),
              child: SizedBox(
                // height: 164,
                width: 145,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('21',
                          style: TextStyle(
                              fontSize: 45, fontFamily: 'MPLUSRounded')),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'Bible Studies',
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'MPLUSRounded'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ), // BS Card
        Expanded(
          child: Card(
            margin: EdgeInsets.only(left: 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color(0xFF7A97FF),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(33, 32, 33, 0),
              child: SizedBox(
                // height: 164,
                width: 145,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('37',
                          style: TextStyle(
                              fontSize: 45, fontFamily: 'MPLUSRounded')),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'Return Visits',
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'MPLUSRounded'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ), // RV Card
        Expanded(
          child: Card(
            margin: EdgeInsets.only(left: 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color(0xFF85FF91),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(33, 32, 33, 0),
              child: SizedBox(
                // height: 164,
                width: 145,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('51',
                          style: TextStyle(
                              fontSize: 45, fontFamily: 'MPLUSRounded')),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'Placements',
                      style:
                          TextStyle(fontSize: 18, fontFamily: 'MPLUSRounded'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ), // PLC Card
        Expanded(
          child: Card(
            margin: EdgeInsets.only(left: 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: const Color(0xFFC2ABFD),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(33, 32, 33, 0),
              child: SizedBox(
                // height: 164,
                width: 145,
                child: Column(
                  children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text('10',
                          style: TextStyle(
                              color: Color(0xFF22163B),
                              fontSize: 45,
                              fontFamily: 'MPLUSRounded')),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    Text(
                      'Videos Shown',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF22163B),
                          fontFamily: 'MPLUSRounded'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ), // VS Card
      ],
    );
  }
}
