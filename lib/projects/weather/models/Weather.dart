class WeatherDay {
  final String title, temperature, icon;

  WeatherDay({
    this.title,
    this.icon,
    this.temperature,
  });
}

List<WeatherDay> weatherDays = [
  WeatherDay(title: 'Friday', temperature: '6', icon: 'wb_sunny'),
  WeatherDay(title: 'Saturday', temperature: '5', icon: 'wb_sunny'),
  WeatherDay(title: 'Sumday', temperature: '22', icon: 'wb_sunny'),
];
