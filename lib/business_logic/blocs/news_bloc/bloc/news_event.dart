part of 'news_bloc.dart';

@immutable
abstract class NewsEvent {}

class NewsTabSelected extends NewsEvent {}

class PaginateNews extends NewsEvent {}
