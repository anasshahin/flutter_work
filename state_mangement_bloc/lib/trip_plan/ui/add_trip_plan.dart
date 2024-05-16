import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/trip_plan/ui/widgets/add_trip_plan_body.dart';
class AddTripPlan extends StatefulWidget {
  const AddTripPlan({super.key});

  @override
  State<AddTripPlan> createState() => _AddTripPlanState();
}

class _AddTripPlanState extends State<AddTripPlan> {
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      appBar: AppBar(),
      body: const AddTripPlanBody(),
    );
  }
}
