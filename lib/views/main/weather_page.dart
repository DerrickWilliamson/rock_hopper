import 'package:flutter/material.dart';
import 'package:rock_hopper/api/insight_mars_api.dart';
import 'package:rock_hopper/models/mars_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherApi = MarsWeatherRepository();
  List<MarsWeather> _weather = [];

  late Future<void> _getWeatherData;

  @override
  void initState() {
    super.initState();
    _getWeatherData = _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final weather = await _weatherApi.getLatestMarsWeather();
    setState(() {
      _weather.add(weather);
      print(_weather);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bg.png"),
            fit: BoxFit.cover,
            alignment: Alignment.center,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 50, bottom: 15, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Current Weather \nat Elysium Planitia",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    fontSize: 28.0),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Expanded(
                child: FutureBuilder(
                  future: _getWeatherData,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (snapshot.hasError) {
                      return Center(
                        child: Text(
                          "Error: ${snapshot.error}",
                          style: const TextStyle(fontSize: 18.0),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: _weather.length,
                        itemBuilder: (context, index) {
                          final weather = _weather[index];
                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Date: ${weather.sol}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text("Temperature: ${weather.maxTemp}"),
                                  const SizedBox(height: 8.0),
                                  Text("Wind speed: ${weather.windSpeed}")
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
