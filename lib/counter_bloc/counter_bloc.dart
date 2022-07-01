import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {


  CounterBloc() : super(CounterInitial(0)){

    on<Counterincrementevent>((event , emit){

    if(event is Counterincrementevent){
      emit(CounterInitial(state.x +1));
    }
    });
    on<Counterdecrementevent>((event, emit) {

      if(event is Counterdecrementevent){
        emit(CounterInitial(state.x -1));
      }
    });

  }
  // Future<void> increasingstate ()async {
  //
  //   x++;
  // }
  // Future<void> decreasingstate ()async {
  //
  //   x--;
  // }
}
