import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_qhzucuii.json'),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              'Read up on the latest rocket launches and spaceflight headlines.  Or check the current weather conditions on Mars.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
