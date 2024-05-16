import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(onPressed: (){
         // BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
          context.read<CounterBloc>().add(IncrementEvent());
        },child: const Icon(Icons.add),),
        const SizedBox(height: 10,),
        FloatingActionButton(onPressed: (){
          context.read<CounterBloc>().add(ResetEvent());

        },child: const Icon(Icons.exposure_zero),),
        const SizedBox(height: 10,),

        FloatingActionButton(onPressed: (){
          context.read<CounterBloc>().add(DecrementEvent());

        },child: const Icon(Icons.remove),),
      ],
    );
  }
}
