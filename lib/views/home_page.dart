import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:rock_hopper/views/launches_page.dart';
import 'package:rock_hopper/views/news_page.dart';
import 'package:rock_hopper/views/travel_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        onTap: (value) {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const NewsPage()));
              },
              child: const Text(
                'News Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LaunchesPage()));
              },
              child: const Text(
                'Lauches Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const TravelPage()));
              },
              child: const Text(
                'Travel Page',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
