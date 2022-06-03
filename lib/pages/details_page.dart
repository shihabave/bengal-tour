import 'package:bengal_tour_app/wid/app_buttons.dart';
import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:bengal_tour_app/wid/app_text.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStar = 4;
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/wellcome-bb.jpg"),
                        fit: BoxFit.fill)),
              ),
            ),
            Positioned(
                left: 20,
                top: 40,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                  ],
                )),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(top: 30, left: 26, right: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      //topRight: Radius.circular(30),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(text: "Setmartin"),
                        AppLargeText(
                          text: "\$ 1200",
                          color: Colors.green,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 6.5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 17,
                          color: Colors.green,
                        ),
                        AppText(
                          text: "Sentmartin,Bangladesh",
                          color: Colors.grey,
                          size: 12,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 2, right: 20),
                          child: Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                size: 20,
                                color: index < gottenStar
                                    ? Colors.yellow
                                    : Colors.grey,
                              );
                            }),
                          ),
                        ),
                        AppText(
                          text: "(4.2)",
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "People",
                      size: 17,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    AppText(
                      text: "Number of people in your group",
                      color: Colors.grey,
                      size: 12,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: AppButton(
                              bordercolor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.white,
                              backgroundcolor: selectedIndex == index
                                  ? Colors.black
                                  : Colors.grey.withOpacity(0.23),
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                              text: (index + 1).toString(),
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLargeText(
                      text: "Description",
                      color: Colors.black.withOpacity(.8),
                    ),
                    AppText(
                      text:
                          "You must go for a travel. Traveling helps getrid of pressure. Go to the Sentmartin to see the nature. ",
                      color: Colors.grey,
                      size: 14,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 15,
                left: 20,
                child: Row(
                  children: <Widget>[
                    AppButton(
                      color: Colors.grey,
                      backgroundcolor: Colors.black.withOpacity(0.2),
                      bordercolor: Colors.white,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 250,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text("Book Trip Now"),
                              SizedBox(
                                width: 100,
                              ),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          )),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
