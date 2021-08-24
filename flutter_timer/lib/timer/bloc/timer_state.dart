part of 'timer_bloc.dart';

/// TimerState extends Equatable to optimize our code by ensuring that our app
/// does not trigger rebuilds if the same state occurs.
abstract class TimerState extends Equatable {
  final int duration;

  const TimerState(this.duration);

  @override
  List<Object?> get props => [duration];
}

class TimerInitial extends TimerState {
  TimerInitial(int duration) : super(duration);

  @override
  String toString() => 'TimerInitial { duration: $duration }';
}

class TimerRunPause extends TimerState {
  TimerRunPause(int duration) : super(duration);

  @override
  String toString() => 'TimerRunPause { duration: $duration }';
}

class TimerRunInProgress extends TimerState {
  TimerRunInProgress(int duration) : super(duration);

  @override
  String toString() => 'TimerRunInProgress { duration: $duration }';
}

class TimerRunComplete extends TimerState {
  TimerRunComplete() : super(0);

  @override
  String toString() => 'TimerRunComplete { duration: $duration }';
}
