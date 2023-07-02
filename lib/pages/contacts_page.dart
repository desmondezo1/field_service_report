import 'package:flutter/material.dart';

class Contacts_page extends StatefulWidget {
  const Contacts_page({Key? key}) : super(key: key);

  @override
  State<Contacts_page> createState() => _Contacts_pageState();
}

class _Contacts_pageState extends State<Contacts_page> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Contacts'),
    );
  }
}
