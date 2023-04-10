import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rock_hopper/data/models/news_model.dart';
import 'package:rock_hopper/data/services/news_api.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial()) {
    on<NewsTabSelected>((event, emit) async {
      emit(NewsLoading());
    });
  }
}
