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
          const SizedBox(height: 20),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Text(
                textAlign: TextAlign.center,
                'Rock Hopper makes booking trips into space easy.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
