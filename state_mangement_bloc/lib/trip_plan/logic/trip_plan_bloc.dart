import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

part 'trip_plan_event.dart';
part 'trip_plan_state.dart';
part 'trip_plan_bloc.freezed.dart';

class TripPlanBloc extends Bloc<TripPlanEvent, TripPlanState> {
  TripPlanBloc() : super(const TripPlanState.initial()) {
    on<TripPlanEvent>((event, emit) {});
    on<IncrementEvent>((event, emit) => increment(event, emit));
    on<SelectDateRangeEvent>((event, emit) => selectDateRangeEvent(event, emit));
   // on<IncrementEvent>((event,emit) => emitIncrement(event,emit));
  }

  emitIncrement(Object? event, Emitter<TripPlanState> emit) {
    //emit(SuccessIncrement());
    emit(const TripPlanState.successIncrementState());
   // emit(const TripPlanState.increment());
  }

  increment(IncrementEvent event, Emitter<TripPlanState> emit) {
    int i = 0;
    i++;
   // emit(const TripPlanState.increment());

  }
  DateTimeRange? _selectedDateRange;
  String dateFirst='';
  String dateLast='';
  int? _daysOfTrip;

  selectDateRangeEvent(SelectDateRangeEvent event, Emitter<TripPlanState> emit) async{
    var newDateRange = await showDateRangePicker(
      context: event.context,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
      initialDateRange: _selectedDateRange ?? DateTimeRange(
        start: DateTime.now(),
        end: DateTime.now().add(const Duration(days: 7)),
      ),
    ).then((value)async{
      dateFirst= DateFormat.yMd().format(value!.start);
      dateLast= DateFormat.yMd().format(value.end);
      if(value.end.month==value.start.month) {
        _daysOfTrip =   value.end.day - value.start.day;
      }else {
        List<int> monthDays=[31,28,31,30,31,30,31,31,30,31,30,31];

        int monthDiff = value.end.month - value.start.month;
        int daysInDiff=0 ;
        for(int i=0;i<monthDiff;i++){
          daysInDiff =daysInDiff+ monthDays[value.start.month+i-1];
        }
        _daysOfTrip = daysInDiff + value.end.day - value.start.day ;
      }
      log(_daysOfTrip.toString());

    });
  }





}
