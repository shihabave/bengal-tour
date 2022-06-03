import 'package:bengal_tour_app/pages/navepages/home_page.dart';
import 'package:bengal_tour_app/pages/navepages/my_page.dart';
import 'package:bengal_tour_app/pages/navepages/search_page.dart';
import 'package:bengal_tour_app/pages/navepages/tab_bar_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), SpringSlider(), SearchPage(), MyProPage()];
  int currentIndex = 0;
  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.shifting,
        onTap: onTab,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.black87,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              title: Text("Bar"), icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(
              title: Text("Search"), icon: Icon(Icons.search)),
          BottomNavigationBarItem(title: Text("My"), icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
