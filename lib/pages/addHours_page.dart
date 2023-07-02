import 'package:flutter/material.dart';

class Hours_page extends StatefulWidget {
  const Hours_page({Key? key}) : super(key: key);

  @override
  State<Hours_page> createState() => _Hours_pageState();
}

class _Hours_pageState extends State<Hours_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Row(
              children: const [
                Text('0 Hrs'),
                Text('00 mins'),
              ],
            ), // time display row
            Center(
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.play_arrow_rounded),
              ),
            )
          ],
        ),
      ),
    );
  }
}
