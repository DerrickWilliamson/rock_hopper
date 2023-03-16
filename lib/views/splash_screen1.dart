import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rock_hopper/views/spash_screen2.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreen1> {
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
