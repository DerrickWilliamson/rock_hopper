import 'package:flutter/material.dart';
import '../../data/services/launch_library_api.dart';
import '../../data/models/launches_model.dart';

class LaunchesPage extends StatefulWidget {
  const LaunchesPage({super.key});

  @override
  State<LaunchesPage> createState() => _LaunchesPageState();
}

class _LaunchesPageState extends State<LaunchesPage> {
  LaunchesModel _launchesModel = LaunchesModel(0, '', []);
  LaunchLibraryApi _launchLibraryApi = LaunchLibraryApi();
  bool _isLoading = true;

  Future<void> _getLaunches() async {
    final launches = await _launchLibraryApi.getLaunches();
    setState(() {
      _launchesModel = launches;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getLaunches();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Count: ${_launchesModel.count}',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Next Url: ${_launchesModel.next}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Launch Name: ${_launchesModel.results[0]['name']}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Launch Description: ${_launchesModel.results[0]['status']['description']}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Launch Name: ${_launchesModel.results[9]['name']}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Launch Description: ${_launchesModel.results[9]['status']['description']}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Results.length: ${_launchesModel.results.length}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
    );
  }
}
