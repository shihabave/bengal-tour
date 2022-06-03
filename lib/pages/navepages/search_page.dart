import 'package:bengal_tour_app/pages/navepages/my_page.dart';
import 'package:bengal_tour_app/wid/app_large_text.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MyProPage()));
              },
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 35,
                  width: 300,
                  color: Colors.white,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'seaarch',
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
                Container(
                  height: 150,
                  color: Colors.white.withOpacity(0.3),
                  child: Expanded(
                    child: Container(
                      height: double.infinity,
                      child: ListView.builder(
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int indext) {
                            return Container(
                              margin: const EdgeInsets.only(
                                right: 15,
                                top: 10,
                                left: 15,
                              ),
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Colors.tealAccent.withOpacity(1.0),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(85),
                                    bottomRight: Radius.circular(40),
                                    bottomLeft: Radius.circular(40)),
                              ),
                            );
                          }),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(right: 140, top: 5),
                child: AppLargeText(text: "Most of popular area"),
              )),
          Expanded(
              child: Container(
            height: double.infinity,
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int indext) {
                  return Container(
                    child: Center(
                        child: Text("Hello! Welcome Back to Our Tour plan")),
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    height: 100,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.purple.withOpacity(0.30),
                      borderRadius: BorderRadius.circular(11),
                    ),
                  );
                }),
          ))
        ],
      ),
    );
  }
}

      
    







// class SearchPage extends StatefulWidget {
//   @override
//   _SearchPageState createState() => _SearchPageState();
// }

// class _SearchPageState extends State<SearchPage> {
  // final CategorisScroller categorisScroller = CategorisScroller();
  // ScrollController controller = ScrollController();
  // List<Widget> itemsData = [];
  // void getPostsData() {
  //   List<dynamic> responseList = Search_Item_Data;
  //   List<Widget> listItem = [];
  //   responseList.forEach((post) {
  //     listItem.add(
  //       Container(
  //         height: 150,
  //         margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.all(
  //             Radius.circular(20),
  //           ),
  //         ),
  //         child: Padding(
  //           padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
  //           child: Row(
  //             children: [
  //               Column(
  //                 mainAxisAlignment: MainAxisAlignment.start,
  //                 children: [
  //                   Text(
  //                     post["name"],
  //                     style: const TextStyle(
  //                         fontSize: 28, fontWeight: FontWeight.bold),
  //                   ),
  //                   Row(
  //                     children: [
  //                       Text(
  //                         post["icon"],
  //                         style: const TextStyle(color: Colors.green),
  //                       ),
  //                       const SizedBox(
  //                         width: 4,
  //                       ),
  //                       Text(
  //                         post["location"],
  //                         style:
  //                             const TextStyle(fontSize: 17, color: Colors.grey),
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   Text(
  //                     '\ ${post["peice"]} Take ',
  //                     style: const TextStyle(
  //                         fontSize: 24,
  //                         color: Colors.black,
  //                         fontWeight: FontWeight.bold),
  //                   ),
  //                   Image.asset(
  //                     "images/${post["image"]}",
  //                     height: double.infinity,
  //                   )
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     );
  //   });
  //   setState(() {
  //     itemsData = listItem;
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
  //   final Size size = MediaQuery.of(context).size;

  //   var container = Container(
  //     height: size.height,
  //     child: Column(
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           children: [
  //             AppText(
  //               text: 'Loyality Cards',
  //               color: Colors.grey,
  //               size: 20,
  //             ),
  //             Text(
  //               "Menu",
  //               style: TextStyle(
  //                   color: Colors.black,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 20),
  //             ),
  //           ],
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         categorisScroller,
  //         Expanded(
  //             child: ListView.builder(
  //                 controller: controller,
  //                 itemCount: itemsData.length,
  //                 physics: BouncingScrollPhysics(),
  //                 itemBuilder: (context, index) {
  //                   return itemsData[index];
  //                 })),
  //       ],
  //     ),
  //   );
    