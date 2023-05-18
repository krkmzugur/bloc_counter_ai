import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './bloc/counter_bloc.dart';
import 'counter_page.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterBlocProvider(
        child: CounterPage(),
      ),
    );
  }
}

class CounterBlocProvider extends StatelessWidget {
  final Widget child;

  const CounterBlocProvider({required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: child,
    );
  }
}
