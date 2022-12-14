part of 'counter_cubit.dart';

/// abstract class state of counter
@immutable
abstract class CounterState {}

/// initial class state of counter
class CounterInitial extends CounterState {}

/// increment state of counter
class CounterPlus extends CounterState {}

/// decrement state of counter
class CounterMinus extends CounterState {}
