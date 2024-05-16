import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/trip_plan_bloc.dart';
import 'add_plan_text_form_feild.dart';

class AddTripPlanBody extends StatelessWidget {
  const AddTripPlanBody({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<TripPlanBloc>();

    return BlocBuilder<TripPlanBloc, TripPlanState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
                child: ListView(
                  children: [

                    /* ...bloc.controller.map((value) {
              return AddPlanTextFormField(controller:  value[0],label:  value[1]);
            }),*/
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37),
                      child: ElevatedButton(
                        child: const Text('set the date range'),
                        onPressed: () {
                          bloc.add(SelectDateRangeEvent(context));
                        },
                      ),
                    ),

                  ],
                )),
          ),
        );
      },
    );
  }
}
