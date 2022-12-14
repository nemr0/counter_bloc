import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
part 'counter_state.dart';

/// cubit where the LOGIC lives
class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  /// A static method to get cubit from anywhere in widget tree
  static CounterCubit get(BuildContext context) =>
      BlocProvider.of<CounterCubit>(context);

  /// the counter itself
  int counter = 0;

  /// increase counter by one and emit increment state
  void plus() => {counter++, emit(CounterPlus())};

  /// decrease counter by one and emit decrement state
  void minus() => {counter--, emit(CounterMinus())};

  /// reset counter to zero and emit initial state
  void reset() => {counter = 0, emit(CounterInitial())};
}
