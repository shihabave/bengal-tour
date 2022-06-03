import 'package:bengal_tour_app/pages/my_profile_page_settings.dart';
import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:bengal_tour_app/wid/app_text.dart';
import 'package:flutter/material.dart';

class MyProPage extends StatefulWidget {
  const MyProPage({Key? key}) : super(key: key);

  @override
  _MyProPageState createState() => _MyProPageState();
}

class _MyProPageState extends State<MyProPage> with TickerProviderStateMixin {
  var text = {
    'Photo\n 327': 327,
    'Follower\n 12k': '12k',
    'Follwing\n 500': 500
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MySettings()));
              },
              child: Container(
                  height: 25,
                  //color: Colors.black,
                  margin: const EdgeInsets.only(left: 340, top: 4),
                  child: Icon(
                    Icons.settings,
                    //color: Colors.green,
                  )),
            ),
            Container(
              height: 120,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, left: 11),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage("images/myimage.jpg"),
                            fit: BoxFit.cover)),
                  ),

                  // SizedBox(
                  //   width: 11,
                  // ),
                  Container(
                    margin: const EdgeInsets.only(top: 90),
                    height: 100,
                    child: AppLargeText(text: "Md Shihb Hasan"),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: AppText(
                text: "Flutter App Developer",
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              //color: Colors.grey,
              width: double.maxFinite,
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Column(
                          children: [
                            Container(
                              //margin: const EdgeInsets.only(right: 20),
                              height: 60,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Center(
                                child: AppText(
                                  text: text.keys.elementAt(index),
                                  color: Colors.black.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 47,
            ),
            UserInfo(),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your Information",
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  Container(
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text(
                            'Location',
                          ),
                          subtitle: Text("Sonir Akhra, Dhaka-1236"),
                        ),
                        ListTile(
                          leading: Icon(Icons.email),
                          title: Text(
                            'Email',
                          ),
                          subtitle: Text("shihabave07@gmail.com"),
                        ),
                        ListTile(
                          leading: Icon(Icons.facebook),
                          title: Text(
                            'Follow Me',
                          ),
                          subtitle: Text(
                              "https://www.facebook.com/photo/?fbid=458466902668645&set=a.102983588216980&__tn__=%3C"),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text(
                            'Phone',
                          ),
                          subtitle: Text("+880 1855-190517"),
                        ),
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text(
                            'About Me',
                          ),
                          subtitle: Text(
                              "This is about me link and you can kwon abou me in this section."),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
