import 'package:flutter/material.dart';

class CategorisScroller extends StatefulWidget {
  const CategorisScroller();

  @override
  _CategorisScrollerState createState() => _CategorisScrollerState();
}

class _CategorisScrollerState extends State<CategorisScroller> {
  @override
  Widget build(BuildContext context) {
    final double categoryHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            Container(
              height: categoryHeight,
              width: 150,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(color: Colors.orange.shade400),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Most\n Popular',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Item 20',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
