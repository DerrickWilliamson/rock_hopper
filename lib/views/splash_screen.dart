import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _HomePageState();
}

class _HomePageState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.network(
              'https://assets1.lottiefiles.com/packages/lf20_ndj9fzcd.json'),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SplashScreen()));
            },
            child: const Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
