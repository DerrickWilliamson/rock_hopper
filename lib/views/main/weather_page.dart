import 'package:flutter/material.dart';
import 'package:rock_hopper/models/open_weather.dart';
import 'package:rock_hopper/api/open_weather_api.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  _WeatherPage2State createState() => _WeatherPage2State();
}

class _WeatherPage2State extends State<WeatherPage> {
  late OpenWeather _openWeather;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadWeather();
  }

  Future<void> _loadWeather() async {
    final openWeatherApi = OpenWeatherApi();
    final openWeather = await openWeatherApi.getCurrentWeather();
    setState(() {
      _openWeather = openWeather;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Current Temperature: ${_openWeather.mainWeather.temp}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Low: ${_openWeather.mainWeather.tempMin}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'High: ${_openWeather.mainWeather.tempMax}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Humidity: ${_openWeather.mainWeather.humidity}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Weather Conditions: ${_openWeather.weatherDescription}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
    );
  }
}
