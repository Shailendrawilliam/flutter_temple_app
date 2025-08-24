import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<Map<String, dynamic>> fetchLanguageContent(String langCode) async {
    final url = Uri.parse("https://your-api.com/languages"); // Your API URL
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data[langCode];  // Fetch content for the requested language
    } else {
      throw Exception("Failed to load language content");
    }
  }
}
