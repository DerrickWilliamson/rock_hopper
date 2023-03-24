import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rock_hopper/models/news_model.dart';

class NewsApi {
  String newsApiKey = dotenv.env['NEWS_API_KEY']!;

  Future<NewsModel> getNews() async {
    String finalUrl =
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=$newsApiKey';
    final url = Uri.parse(finalUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var status = data['status'];
      var totalResults = data['totalResults'];
      var articles = data['articles'];
      return NewsModel(status, totalResults, articles);
    } else {
      throw Exception('Failed to load news data');
    }
  }
}
