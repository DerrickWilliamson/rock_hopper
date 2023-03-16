import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage1 extends StatefulWidget {
  const SplashPage1({super.key});

  @override
  State<SplashPage1> createState() => _HomePageState();
}

class _HomePageState extends State<SplashPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_6pjojgtl.json'),
        ],
      ),
    );
  }
}
