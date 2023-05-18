import 'package:bloc_counter_equatable_ai/bloc/counter_state.dart';
import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class FirstIncrementEvent extends CounterEvent {}

class FirstDecrementEvent extends CounterEvent {}

class SecondIncrementEvent extends CounterEvent {}

class SecondDecrementEvent extends CounterEvent {}

class StartCountdownEvent extends CounterEvent {}
