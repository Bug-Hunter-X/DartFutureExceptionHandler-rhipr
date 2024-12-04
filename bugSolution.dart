```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if 'name' exists before accessing it
      if (jsonData.containsKey('name')) {
        return jsonData;
      } else {
        //Informative message about missing key
        print('Error: Response is missing the "name" key.');
        return null; // Or throw a custom exception
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
    return null; //Or re-throw
  } on http.ClientException catch (e) {
    print('Error: Network error: $e');
    return null; //Or re-throw
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; // Or re-throw
  }
}
```