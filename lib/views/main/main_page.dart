import 'package:flutter/material.dart';
import 'package:rock_hopper/views/main/launches_page.dart';
import 'package:rock_hopper/views/main/news_page.dart';
import 'package:rock_hopper/views/main/travel_page.dart';
import 'package:rock_hopper/views/main/weather_page.dart';

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
    const WeatherPage(),
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
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rocket),
            label: 'Launches',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_circle),
            label: 'Weather',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Travel',
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
