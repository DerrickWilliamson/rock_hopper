import 'package:flutter/material.dart';
import '../../data/models/weather.dart';
import '../../data/services/open_weather_api.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  _WeatherPage2State createState() => _WeatherPage2State();
}

class _WeatherPage2State extends State<WeatherPage> {
  late Weather _weather;
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
      _weather = openWeather;

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
                    '${_weather.cityName}, ${_weather.sysWeather.country}',
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    'Current Temperature: ${_weather.mainWeather.temp} ºF',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Weather Conditions: ${_weather.weatherDescription}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text('Feels Like: ${_weather.mainWeather.feelsLike} ºF',
                      style: TextStyle(fontSize: 20.0)),
                  Text(
                    'Today\'s Low: ${_weather.mainWeather.tempMin} ºF',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Today\'s High: ${_weather.mainWeather.tempMax} ºF',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Humidity: ${_weather.mainWeather.humidity}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Wind Speed: ${_weather.wind.speed} mph',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Sunrise: ${_weather.sysWeather.sunrise}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    'Sunset: ${_weather.sysWeather.sunset}',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ],
              ),
            ),
    );
  }
}
