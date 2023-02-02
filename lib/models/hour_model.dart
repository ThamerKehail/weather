class HourModel {
  String time;
  double temp_c;
  String text;
  String icon;
  double feelslike_c;
  int chance_of_rain;
  HourModel(
      {required this.temp_c,
      required this.text,
      required this.chance_of_rain,
      required this.feelslike_c,
      required this.icon,
      required this.time});
}
