import 'package:flutter/material.dart';

import 'launches_page.dart';
import 'news_page.dart';
import 'travel_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NewsPage(),
    const LaunchesPage(),
    const TravelPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30.0,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper_rounded),
            label: 'Space News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Rocket Launches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Book Travel',
          ),
        ],
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
