import 'package:bloc_examples/counter/bloc/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrement>(
      (event, emit) {
        emit(state + 1);
      },
    );
    on<CounterDecrement>((event, emit) {
      emit(state - 1);
    });
  }
}
