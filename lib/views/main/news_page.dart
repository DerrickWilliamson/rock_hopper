import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../api/news_api.dart';
import '../../models/news_model.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  NewsModel _newsModel = NewsModel('', 0, []);
  NewsApi _newsApi = NewsApi();
  bool _isLoading = true;

  Future<void> _getNews() async {
    final news = await _newsApi.getNews();
    setState(() {
      _newsModel = news;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Status: ${_newsModel.status}',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Total Results: ${_newsModel.totalResults}',
                    style: const TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    'Article Title: ${_newsModel.articles[0]['title']}',
                    style: const TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
    );
  }
}
