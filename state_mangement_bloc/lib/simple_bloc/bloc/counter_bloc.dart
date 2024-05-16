
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Utils/random_color.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter=0;
  Color color=Colors.black;
  CounterBloc() : super(CounterInitial()) {//super(CounterInitial()) the class inside super is initial state of  this bloc
    on<CounterEvent>((event, emit) {// on<CounterEvent> this mean any class inhirate from CounterEvent will use here
    if (event is IncrementEvent){
      counter= counter+1;
      emit(CounterValueChangedState(counter: counter));
    }else if(event is DecrementEvent){
      counter= counter-1;

      emit(CounterValueChangedState(counter: counter));
    }else {
      counter= 0;
      emit(CounterValueChangedState(counter: counter));
    }
    });
    on <ChangeColorEvent>((event,emit){
      color=RandomColor.generateColor();
      emit(ColorValueChangedState(color: color));
        });
  }
}
