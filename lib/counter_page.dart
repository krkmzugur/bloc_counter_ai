import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/counter_bloc.dart';
import './bloc/counter_event.dart';
import './bloc/counter_state.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Count 1: ${state.count1}',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  'Count 2: ${state.count2}',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(FirstDecrementEvent());
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(FirstIncrementEvent());
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(SecondDecrementEvent());
                },
                child: Icon(Icons.remove),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () {
                  counterBloc.add(SecondIncrementEvent());
                },
                child: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
