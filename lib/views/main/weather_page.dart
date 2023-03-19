import 'package:flutter/material.dart';
import 'package:rock_hopper/api/insight_mars_api.dart';
import 'package:rock_hopper/models/mars_weather.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherApi = WeatherApi();
  final _weather = <MarsWeather>[];

  late Future<void> _getWeatherData;

  @override
  void initState() {
    super.initState();
    _getWeatherData = _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final weather = await _weatherApi.getWeatherData();
    setState(() {
      _weather.add(weather);
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
              SizedBox(
                height: 30.0,
                child: Text('Temperature: ${_weather} °C\n'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
