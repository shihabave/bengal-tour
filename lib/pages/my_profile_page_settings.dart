import 'package:bengal_tour_app/pages/from_page.dart';
import 'package:bengal_tour_app/pages/navepages/my_page.dart';
import 'package:flutter/material.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
            ),
            const Center(
              child: Text(
                "Upgrede Your Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 27),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                        image: AssetImage('images/person.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 10,
            ),
            FromePage(),
            SizedBox(
              height: 15,
            ),
            Center(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => MyProPage()));
                    },
                    height: 50,
                    minWidth: 120,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.green,
                    child: const Text(
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
