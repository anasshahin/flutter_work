part of 'trip_plan_bloc.dart';

@freezed
class TripPlanState with _$TripPlanState {
  const factory TripPlanState.initial() = _Initial;
  const factory TripPlanState.successIncrementState() = SuccessIncrement;
  const factory TripPlanState.selectDateRangeState(int daysTrip,String lastDay,String firstDay) = SelectDateRangeState;
  const factory TripPlanState.controllerAddPlanState(List<List<dynamic>> controllerAddPlan,List<String>controllerType) = ControllerAddPlan;
}
