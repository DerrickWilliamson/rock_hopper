import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rock_hopper/business_logic/blocs/launches_bloc/bloc/launches_bloc.dart';
import 'package:rock_hopper/business_logic/blocs/news_bloc/bloc/news_bloc.dart';
import 'views/onboarding/onboarding_page.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<NewsBloc>(
            create: (context) => NewsBloc(),
          ),
          BlocProvider<LaunchesBloc>(
            create: (context) => LaunchesBloc(),
          ),
        ],
        child: const OnboardingPage(),
      ),
    );
  }
}
