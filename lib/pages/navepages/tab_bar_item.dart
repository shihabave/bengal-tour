import 'package:bengal_tour_app/pages/tabbaritemdetailspages/learn_travel&t.dart';
import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:flutter/material.dart';

class SpringSlider extends StatelessWidget {
  var images = {
    'sofran.jpg': "Sofran",
    'mitu.jpg': 'With Mitu',
    'kastiya.jpg': 'Taskiya',
    "dhula.jpg": 'Dhulamoy Razzo',
    'dust.jpg': 'ek dip',
    'alhaz.jpg': "Alhaz",
    'shihab.jpg': "Shihab Ave",
    'sahadat.jpg': "Shahadat",
    'apurbo.jpg': "Apurbo Saha",
    'nahid.jpg': 'Nahid'
  };
  static double _lowerValu = 67.0;
  static double _upperValu = 56.0;
  static final String path = 'lib/ssjhdfk/sjdi/ksdijhf/asdu';
  _buildTextButton(String title, bool isOnLight) {
    return FlatButton(
        onPressed: () {},
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
              color: isOnLight ? Colors.pink : Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more),
        ),
        actions: <Widget>[
          _buildTextButton("Massege", true),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images.length,
                        itemBuilder: (_, index) {
                          return Container(
                            margin: const EdgeInsets.only(right: 20),
                            height: double.maxFinite,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(
                                    'images/' + images.keys.elementAt(index),
                                  ),
                                  fit: BoxFit.fill,
                                )),
                            child: Container(
                              margin: EdgeInsets.only(top: 10, left: 18),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      AppLargeText(
                                          text: images.values.elementAt(index),
                                          color: Colors.white.withOpacity(1.0)),
                                      SizedBox(
                                        height: 25,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: List.generate(10, (indexDots) {
                                      return Container(
                                        margin: const EdgeInsets.only(
                                            bottom: 5, right: 6),
                                        width: 8,
                                        height: index == indexDots ? 25 : 8,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: index == indexDots
                                              ? Colors.pink
                                              : Colors.white24
                                                  .withOpacity(0.53),
                                        ),
                                      );
                                    }),
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                    height: 300,
                    width: 320,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AppLargeText(
                                  text: 'Travel Update',
                                  size: 15,
                                )),
                            SizedBox(
                              width: 234,
                            ),
                            Icon(Icons.keyboard_arrow_right)
                          ],
                        ),
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppLargeText(
                                text: 'Your Activity',
                                size: 15,
                              )),
                          SizedBox(
                            width: 240,
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: AppLargeText(
                                text: "Learn English",
                                size: 15,
                              )),
                          SizedBox(
                            width: 236,
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LearnTravelTourisum()));
                    },
                    child: Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: AppLargeText(
                              text: "Learn Travel and Torisum",
                              size: 15,
                            ),
                          ),
                          SizedBox(
                            width: 148,
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
