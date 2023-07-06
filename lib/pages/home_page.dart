import 'package:flutter/material.dart';

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

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 75,
              width: 86,
            ),
            const SelectMonth(),
            Container(
              // height: 257,
              margin: const EdgeInsets.only(left: 33, right: 33),
              child: const Row(
                children: [
                  Expanded(
                    child: Card(
                      margin: EdgeInsets.only(top: 36),
                      color: Color(0xFF171717),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(33, 42, 0, 46),
                        child: SizedBox(
                          // height: 257,
                          // width: 332,
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Goal - 70 hrs',
                                  style: TextStyle(
                                      color: Color(0xFF949494),
                                      fontSize: 16,
                                      fontFamily: 'Ubuntu'),
                                ),
                              ),
                              // const SizedBox(
                              //   height: 20,
                              // ),
                              Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.alphabetic,
                                  children: [
                                    Text('67',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 87,
                                            fontFamily: 'MPLUSRounded',
                                            fontWeight: FontWeight.w800)),
                                    Text('Hrs',
                                        style: TextStyle(
                                            color: Color(0xFF636363),
                                            fontSize: 25,
                                            fontFamily: 'MPLUSRounded'))
                                  ])
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 0, top: 48, right: 20),
              height: 164,
              child: Report(),
            )
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
