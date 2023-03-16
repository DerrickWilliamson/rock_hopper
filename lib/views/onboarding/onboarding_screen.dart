import 'package:flutter/material.dart';
import 'package:rock_hopper/views/main/launches_page.dart';
import 'package:rock_hopper/views/main/news_page.dart';
import 'package:rock_hopper/views/main/travel_page.dart';
import 'package:rock_hopper/views/onboarding/spash_screen2.dart';
import 'package:rock_hopper/views/onboarding/splash_screen1.dart';
import 'package:rock_hopper/views/onboarding/splash_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _HomePageState();
}

class _HomePageState extends State<OnboardingScreen> {
  PageController _controller = PageController(initialPage: 0);
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const NewsPage(),
    const LaunchesPage(),
    const TravelPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              SplashScreen1(),
              SplashScreen2(),
              SplashScreen3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: SmoothPageIndicator(controller: _controller, count: 3),
          )
        ],
      ),
    );
  }
}
