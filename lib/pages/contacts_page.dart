import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'add_contacts.dart';

class Contacts_page extends StatefulWidget {
  const Contacts_page({Key? key}) : super(key: key);

  @override
  State<Contacts_page> createState() => _Contacts_pageState();
}

class _Contacts_pageState extends State<Contacts_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        margin: EdgeInsets.only(top: 82),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 33, right: 33),
              margin: EdgeInsets.only(bottom: 54),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Search contacts ...',
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 33, right: 33),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 42),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      color: Colors.amber,
                                      child: const SizedBox(
                                        height: 94,
                                        width: 19,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '8 hrs 30 mins',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('15 / 03 / 2023')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.more_vert,
                                          size: 37,
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), // History Item
                    Container(
                      margin: EdgeInsets.only(bottom: 42),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      color: Colors.amber,
                                      child: const SizedBox(
                                        height: 94,
                                        width: 19,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '8 hrs 30 mins',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('15 / 03 / 2023')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.more_vert,
                                          size: 37,
                                          color: Colors.black,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ), // History Item
                    Container(
                      margin: EdgeInsets.only(bottom: 42),
                      child: Row(
                        children: [
                          Expanded(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      color: Colors.amber,
                                      child: const SizedBox(
                                        height: 94,
                                        width: 19,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 8,
                                    child: Container(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            '8 hrs 30 mins',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontFamily: 'Ubuntu',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text('15 / 03 / 2023')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Icon(
                                          Icons.more_vert,
                                          size: 37,
                                          color: Colors.black,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 16.0,
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddContact()));
                  },
                  child: Icon(Icons.person_add),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
