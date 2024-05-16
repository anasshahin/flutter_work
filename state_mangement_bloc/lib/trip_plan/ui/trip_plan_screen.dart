import 'package:flutter/material.dart';
import 'widgets/trip_plan_screen_body.dart';

class TripPlanScreen extends StatelessWidget {
  const TripPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trip Plan'),
      ),
      body: const TripPlanScreenBody(),
    );
  }
}
