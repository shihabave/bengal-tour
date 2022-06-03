import 'package:bengal_tour_app/wid/app_text.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  bool? isIcon;
  final Color backgroundcolor;
  final Color bordercolor;
  AppButton({
    Key? key,
    this.isIcon = false,
    this.text,
    this.icon,
    required this.color,
    required this.backgroundcolor,
    required this.bordercolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: bordercolor,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(10),
        color: backgroundcolor,
      ),
      child: isIcon == false
          ? Row(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: AppText(
                      text: text!,
                      color: color,
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
