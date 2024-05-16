part of 'trip_plan_bloc.dart';

@freezed
class TripPlanEvent with _$TripPlanEvent {
  const factory TripPlanEvent.started() = _Started;
  //const factory TripPlanEvent.incrementEvent() = IncrementEvent;
  const factory TripPlanEvent.incrementEvent() = IncrementEvent;
  const factory TripPlanEvent.selectDateRangeEvent(BuildContext context) = SelectDateRangeEvent;
}


