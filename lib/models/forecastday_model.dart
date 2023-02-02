class ForecastdayModel {
  String date;
  double maxtemp_c;
  double mintemp_c;
  double avgtemp_c;
  int daily_chance_of_rain;
  String icon;
  String sunrise;
  String sunset;
  String moonrise;
  String moonset;
  String moon_phase;
  ForecastdayModel(
      {required this.icon,
      required this.avgtemp_c,
      required this.daily_chance_of_rain,
      required this.date,
      required this.maxtemp_c,
      required this.mintemp_c,
      required this.moon_phase,
      required this.moonrise,
      required this.moonset,
      required this.sunrise,
      required this.sunset});
}
