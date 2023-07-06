import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AddContact extends StatefulWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  State<AddContact> createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  int contactStatus = 0;

  void getLocation() async {
    // Position position = await Geolocator.getCurrentPosition(
    //   desiredAccuracy: LocationAccuracy.high,
    // );
    // double latitude = position.latitude;
    // double longitude = position.longitude;
    //
    // print('Latitude: $latitude');
    // print('Longitude: $longitude');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(33, 82, 33, 33),
          child: Column(
            children: [
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    getLocation();
                  },
                  child: Row(
                    children: [Icon(Icons.map), Text('Get Location')],
                  )),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Publication',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                child: TextField(
                  maxLines: null, // Allows unlimited lines
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Last Conversation',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Radio(
                      value: 0,
                      groupValue: contactStatus,
                      onChanged: (int? val) => {
                        setState(() {
                          contactStatus = val!;
                        })
                      },
                    ),
                    Text('RV'),
                    Radio(
                      value: 1,
                      groupValue: contactStatus,
                      onChanged: (int? val) => {
                        setState(() {
                          contactStatus = val!;
                        })
                      },
                    ),
                    Text('BS'),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    alignment: Alignment.center,
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF68A26E)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(37, 15, 37, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Add Contact')
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
