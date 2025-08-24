import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;

class LocalizationService {
  static const String apiUrl = "https://your-api.com/get-translations";

  static Future<Map<String, String>> fetchTranslations(String languageCode) async {
    var box = Hive.box('translations');

    try {
      final response = await http.get(Uri.parse("$apiUrl?lang=$languageCode"));
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = json.decode(response.body);
        Map<String, String> translations = jsonResponse.map((key, value) => MapEntry(key, value.toString()));

        // Store translations in Hive
        await box.put(languageCode, translations);

        return translations;
      }
    } catch (e) {
      print("Error fetching translations: $e");
    }

    // Fallback to stored translations if API fails
    return Map<String, String>.from(box.get(languageCode, defaultValue: {}));
  }
}
