part of 'news_bloc.dart';

@immutable
abstract class NewsState {}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsLoaded extends NewsState {
  final NewsModel newsModel;

  NewsLoaded(this.newsModel);
}

class NewsPaginated extends NewsState {}

class NewsError extends NewsState {
  final String message;

  NewsError(this.message);
}
