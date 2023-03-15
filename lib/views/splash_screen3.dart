import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rock_hopper/views/main_screen.dart';

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
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
            child: const Text(
              'Get Started',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
