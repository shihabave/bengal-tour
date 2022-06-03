import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:bengal_tour_app/wid/app_text.dart';
import 'package:bengal_tour_app/wid/responsive_button.dart';
import 'package:flutter/material.dart';

class WelComePage extends StatefulWidget {
  const WelComePage({Key? key}) : super(key: key);

  @override
  _WelComePageState createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  List images = [
    'wellcom-green.jpg',
    'wellcome-sylhet.jpg',
    'wellcome_three.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/' + images[index]),
                fit: BoxFit.cover,
              )),
              child: Container(
                margin: EdgeInsets.only(top: 300, left: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        AppLargeText(
                            text: "Outing Tour With Friend",
                            color: Colors.white.withOpacity(1.0)),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Let's keep a good mind and come back to the new place",
                            color: Colors.white70.withOpacity(1.0),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 164, left: 8),
                          child: ResponsiveButton(),
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? Colors.white
                                : Colors.white24.withOpacity(0.53),
                          ),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
