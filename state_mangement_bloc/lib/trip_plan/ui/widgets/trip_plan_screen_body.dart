import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/trip_plan_bloc.dart';
import '../add_trip_plan.dart';


class TripPlanScreenBody extends StatelessWidget {
  const TripPlanScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TripPlanBloc>();
    return SingleChildScrollView(
        /*SliverToBoxAdapter(
          child: MaterialButton(onPressed: (){},child: Text('increment'),),
        ),*/
      child:  ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> const AddTripPlan()));
            },
            child: const Text('show Screen'))
    );
  }
}
