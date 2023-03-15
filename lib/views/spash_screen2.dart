import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rock_hopper/views/splash_screen3.dart';

class SplashScreen2 extends StatelessWidget {
  const SplashScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.network(
              'https://assets7.lottiefiles.com/packages/lf20_qhzucuii.json'),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashScreen3()));
            },
            child: const Text(
              'Splash Screen 3',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
