part of 'counter_bloc.dart';

@immutable

abstract class CounterState {
  CounterState(this.x);
int x ;
}

class CounterInitial extends CounterState {
  CounterInitial(super.x);



}
// class Counterincrementstate extends CounterState{
//
// }
// class Counterdecrementstate extends CounterState{
//
// }
