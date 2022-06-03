import 'package:bengal_tour_app/pages/details_page.dart';
import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:bengal_tour_app/wid/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  //final Destination? destination;
  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var pleImages = {
    "wellcome-lalbag.jpg": 'Lalbag kella',
    "hiking.jpg": 'Hiking on tha Mountain',
    "wellcome-snd.jpg": 'Good morning',
    "wellcome_two.jpg": 'Village road',
    "wellcome_three.jpg": 'Dhanmondi lake',
  };

  var images = {
    "village.jpg": "Village",
    "hiking.jpg": "Hiking",
    "kayking.jpg": "Kayaking",
    "swiming.jpg": "Swiming",
    "group.jpg": "Group",
  };
  @override
  Widget build(BuildContext context) {
    TabController _tabcontrolar = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 12, left: 16),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        size: 25,
                        color: Colors.black,
                      )),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20, top: 3),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: "Expoler More",
                    size: 17,
                    color: Colors.black,
                  ),
                  AppText(
                    text: "See all",
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (_, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.only(right: 35),
                        child: Column(
                          children: [
                            Container(
                              //margin: const EdgeInsets.only(right: 20),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                  image: DecorationImage(
                                      image: AssetImage("images/" +
                                          images.keys.elementAt(index)),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              child: AppText(
                                text: images.values.elementAt(index),
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.only(left: 25),
              child: AppLargeText(
                text: "Contrivance",
                size: 19,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: TabBar(
                  controller: _tabcontrolar,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 30, right: 30),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [Text("Pleace"), Text("Inspiration"), Text("Passion")]),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 180,
              width: double.maxFinite,
              child: TabBarView(controller: _tabcontrolar, children: [
                ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int indext) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => DetailsPage()));
                        },
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10, left: 20, top: 265),
                            child: AppText(
                              text: pleImages.values.elementAt(indext),
                              color: Colors.black.withOpacity(1.0),
                            ),
                          ),
                          margin: const EdgeInsets.only(right: 15, top: 10),
                          height: 180,
                          width: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(
                                    "images/" +
                                        pleImages.keys.elementAt(indext),
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int indext) {
                      return Container(
                        child: Center(
                            child:
                                Text("Hello! Welcome Back to Our Tour plan")),
                        margin: const EdgeInsets.only(right: 15, top: 10),
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.purple.withOpacity(0.30),
                          borderRadius: BorderRadius.circular(11),
                        ),
                      );
                    }),
                Text("emotion"),
              ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    //Activity activity = widget.
                    return Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
                          height: 170,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
