```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      final jsonData = jsonDecode(response.body);
      print(jsonData['name']); // This might throw an error if 'name' is missing
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); // This only prints the error, not a more informative message.
    // Additional logging or error handling could improve debugging
  }
}
```