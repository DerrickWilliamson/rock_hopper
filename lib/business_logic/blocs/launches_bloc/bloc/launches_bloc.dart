import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'launches_event.dart';
part 'launches_state.dart';

class LaunchesBloc extends Bloc<LaunchesEvent, LaunchesState> {
  LaunchesBloc() : super(LaunchesInitial()) {
    on<LaunchesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
