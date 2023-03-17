import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashPage3 extends StatelessWidget {
  const SplashPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_whmmdqnm.json'),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              'Once you’re ready, click the “Book Travel” button and secure your ride into space!',
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
