import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:rock_hopper/views/launches_page.dart';
import 'package:rock_hopper/views/news_page.dart';
import 'package:rock_hopper/views/travel_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NewsPage(),
    const LaunchesPage(),
    const TravelPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        color: Colors.white,
        backgroundColor: Colors.black,
        items: const <Widget>[
          Icon(Icons.newspaper_rounded, size: 30),
          Icon(Icons.rocket, size: 30),
          Icon(Icons.calendar_month_rounded, size: 30),
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
