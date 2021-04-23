import 'package:design_app/screens/home_screen.dart';
import 'package:design_app/screens/notification_screen.dart';
import 'package:design_app/screens/profile_screen.dart';
import 'package:design_app/screens/search_screen.dart';
import 'package:design_app/screens/video_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentTab = 0;

  final tabs = [
    HomeScreen(),
    SearchScreen(),
    VideoScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentTab,
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "")
        ],
      ),
      body: tabs[currentTab],
    );
  }
}
