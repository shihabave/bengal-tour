import 'package:bengal_tour_app/pages/navepages/main_page.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  ResponsiveButton({
    Key? key,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const MainPage()));
        },
        height: 50,
        minWidth: 120,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white.withOpacity(0.60),
        child: const Text(
          "Let\'s go",
          style: TextStyle(color: Colors.black),
        ));
  }
}
