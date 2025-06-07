class Weather {
  final String cityName;
  final double temperature;
  final String maincondtion;

  Weather({
    required this.temperature,
    required this.maincondtion,
    required this.cityName,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      maincondtion: json['weather'][0]['main'],
    );
  }
}
