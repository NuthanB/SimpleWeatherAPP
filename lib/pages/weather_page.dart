import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/services/weather_services.dart';
import '../models/weather_modal.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();

}
class _WeatherPageState extends State<WeatherPage> {

    //api key
    final _weatherService = WeatherService('UrApiKey');
    Weather? _weather;
    
    //fetch the weather
    _fetchWeather () async{
      String cityName = await _weatherService.getCurrentCity();

      try {
        final weather = await _weatherService.getWeather(cityName);
        setState(() {
          _weather = weather;
        });
      }
      catch (e){
        print(e);
      }

    }
String getWeatherAnimation(String? mainCondition){
  if (mainCondition == null)return 'assets/sunny.json';

  switch(mainCondition.toLowerCase())
  {
    case 'clouds':
    case 'mist':
    case 'smoke':
    case 'haze':
    case 'dust':
    case 'fog':
      return 'assets/Clouds.json';
    case 'rain':
    case 'drizzle':
    case 'shower rain':
      return 'assets/rainy.json';
    case 'thunderstorm':
      return 'assets/thunder.json';
    case 'clear':
      return 'assets/sunny.json';
    default:
      return 'assets/sunny.json';
  }
}

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(_weather?.cityName ?? 'Loading city.....'),

          //animation
          Lottie.asset(getWeatherAnimation(_weather?.mainCondition)),

          Text('${_weather?.temperature.round().toString()}'+'°C'),
          
          Text(_weather?.mainCondition ?? "")

                ]),
        ),
    ));
  }
}