import 'package:flutter/material.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/view/guide_screen/guide_screen.dart';

import 'package:my_project/view/home_screen/home_screen.dart';
import 'package:my_project/view/requests_page/requests.dart';
import 'package:my_project/view/settings_screen/settings_screen.dart';
import 'package:my_project/view/theme_screen/theme_screen.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int selectedIndex = 0;
  List<Widget> Mywidgets = [
    HomeScreen(),
    RequestsScreen(),
    GuideScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Mywidgets[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: ColorConstant.MainGreen,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_chart_outlined), label: "Requests"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp), label: "Guide"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
    );
  }
}
