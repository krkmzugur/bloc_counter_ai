import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0, 0)) {
    on<FirstIncrementEvent>((event, emit) {
      int newCount1 = state.count1 + 1;
      int newCount2 = state.count2;

      if (newCount1 == 5) {
        newCount2 = 6;
      }

      emit(CounterState(newCount1, newCount2));
    });

    on<FirstDecrementEvent>((event, emit) {
      emit(CounterState(state.count1 - 1, state.count2));
    });

    on<SecondIncrementEvent>((event, emit) {
      emit(CounterState(state.count1, state.count2 + 1));
    });

    on<SecondDecrementEvent>((event, emit) {
      emit(CounterState(state.count1, state.count2 - 1));
    });
  }
}
