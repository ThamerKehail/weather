import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/utils/consts.dart';

class WeatherServices {
  Future<WeatherModel> getWeather() async {
    final Uri url = Uri.parse(
        "${AppStatic.baseUrl}/forecast.json?key=e5784a62c9514891bc8122956230102&q=Amman&days=7");
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
    print(data);
    WeatherModel weatherModel = WeatherModel.fromJson(data);
    return weatherModel;
  }
}
