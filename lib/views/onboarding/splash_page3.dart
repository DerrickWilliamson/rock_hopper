import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets1.lottiefiles.com/private_files/lf30_whmmdqnm.json'),
        ],
      ),
    );
  }
}
