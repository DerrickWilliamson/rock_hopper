import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rock_hopper/models/launches_model.dart';

class LaunchesLibraryApi {
  Future<LaunchesModel> getLaunches() async {
    final url = Uri.parse(dotenv.env['LAUNCHES_LIBRARY_API_URL']!);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return LaunchesModel.fromJson(data);
      print(data);
    } else {
      throw Exception('Failed to load launches data');
    }
  }
}
