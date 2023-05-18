import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count1;
  final int count2;

  const CounterState(this.count1, this.count2);

  CounterState copyWith({int? count1, int? count2}) {
    return CounterState(
      count1 ?? this.count1,
      count2 ?? this.count2,
    );
  }

  @override
  List<Object> get props => [count1, count2];
}
