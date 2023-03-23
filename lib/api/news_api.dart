import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:rock_hopper/models/news_model.dart';

class NewsApi {
  Future<NewsModel> getNews() async {
    final url = Uri.parse(
        'https://newsapi.org/v2/everything?q=space,rocket&apiKey=${dotenv.env['NEWS_API_KEY']}');
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    var status = data['status'];
    var totalResults = data['totalResults'];
    var articles = data['articles'];
    return NewsModel(status, totalResults, articles);
  }
}
