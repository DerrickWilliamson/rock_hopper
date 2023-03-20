import 'package:flutter/material.dart';
import 'package:rock_hopper/models/open_weather.dart';
import 'package:rock_hopper/api/open_weather_api.dart';

class WeatherPage2 extends StatefulWidget {
  const WeatherPage2({Key? key}) : super(key: key);

  @override
  _WeatherPage2State createState() => _WeatherPage2State();
}

class _WeatherPage2State extends State<WeatherPage2> {
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
                  Text('Current Temperature: ${_openWeather.base}'),
                  Text('Low: ${_openWeather.tempMin}'),
                  Text('High: ${_openWeather.tempMax}'),
                  Text('Humidity: ${_openWeather.humidity}'),
                  Text('City Name: ${_openWeather.cityName}'),
                ],
              ),
            ),
    );
  }
}
