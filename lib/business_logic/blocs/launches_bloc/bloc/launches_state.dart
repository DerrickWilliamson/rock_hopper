part of 'launches_bloc.dart';

@immutable
abstract class LaunchesState {}

class LaunchesInitial extends LaunchesState {}

class LaunchesLoading extends LaunchesState {}

class LaunchesLoaded extends LaunchesState {}

class LaunchesError extends LaunchesState {
  final String message;

  LaunchesError(this.message);
}
