import 'package:flutter/material.dart';
import 'package:rock_hopper/views/main/launches_page.dart';
import 'package:rock_hopper/views/main/main_page.dart';
import 'package:rock_hopper/views/main/news_page.dart';
import 'package:rock_hopper/views/main/travel_page.dart';
import 'package:rock_hopper/views/onboarding/splash_page3.dart';
import 'package:rock_hopper/views/onboarding/splash_page2.dart';
import 'package:rock_hopper/views/onboarding/splash_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _HomePageState();
}

class _HomePageState extends State<OnboardingPage> {
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
            children: const [
              SplashPage1(),
              SplashPage2(),
              SplashPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.75),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // skip button
                GestureDetector(
                  child: const Text('skip'),
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                // next button or done button when on last page
                GestureDetector(
                  child: const Text('next'),
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease,
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}