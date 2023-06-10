// ignore_for_file: file_names
import 'package:http/http.dart' as http;

import '../Models/Dog.dart';

class DogService {
  final String baseUrl =
      "https://egitim.azurewebsites.net/Dog/GetDogInformation";

  Future<List<Dog>> getDogs() async {
    var url = Uri.parse(baseUrl);
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    return dogFromJson(response.body);
  }
}
