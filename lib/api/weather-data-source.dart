import 'package:http/http.dart' as http;

class WeatherService {
  static Future<String> fetchWeatherDetail() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
