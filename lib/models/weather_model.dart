import 'package:weather_app/models/forecastday_model.dart';
import 'package:weather_app/models/hour_model.dart';

class WeatherModel {
  String name;
  String country;
  String localtime;
  String text;
  double temp_c;
  List<ForecastdayModel>? forecastday;
  List<HourModel>? hour;
  WeatherModel(
      {required this.name,
      required this.text,
      required this.country,
      this.forecastday,
      this.hour,
      required this.localtime,
      required this.temp_c});

  factory WeatherModel.fromJson(dynamic json) {
    return WeatherModel(
        name: json['location']['name'],
        text: json['current']['condition']['text'],
        country: json['location']['country'],
        localtime: json['location']['localtime'],
        forecastday: json['forecast']['forecastday'],
        temp_c: json['current']['temp_c']);
  }
}
