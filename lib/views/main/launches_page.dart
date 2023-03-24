import 'package:flutter/material.dart';
import 'package:rock_hopper/api/launch_library_api.dart';

import '../../models/launches_model.dart';

class LaunchesPage extends StatefulWidget {
  const LaunchesPage({super.key});

  @override
  State<LaunchesPage> createState() => _LaunchesPageState();
}

class _LaunchesPageState extends State<LaunchesPage> {
  LaunchesModel _launchesModel = LaunchesModel(0);
  LaunchLibraryApi _launchLibraryApi = LaunchLibraryApi();

  Future<void> _getLaunches() async {
    final launches = await _launchLibraryApi.getLaunches();
    setState(() {
      _launchesModel = launches;
      print(launches.count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Launches Page',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _getLaunches();
                });
              },
              child: const Text('Get Launches'),
            ),
          ],
        ),
      ),
    );
  }
}
