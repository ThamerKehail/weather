import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WeatherModel? weatherModel;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        actions: const [
          Icon(Icons.search_rounded),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "there is no weater 🙁 start \n searching now 🔍",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
                onPressed: () async {
                  weatherModel = await WeatherServices().getWeather();
                  print(weatherModel?.forecastday![0].sunset);
                },
                child: Text("Get"))
          ],
        ),
      ),
    );
  }
}
// Container(
// decoration: const BoxDecoration(
// image: DecorationImage(
// image: NetworkImage(
// 'https://www.gizmochina.com/wp-content/uploads/2022/06/iOS-16-Weather-Wallpaper-2-GIZMOCHINA-Small.jpg'),
// fit: BoxFit.cover,
// )),
// ),
