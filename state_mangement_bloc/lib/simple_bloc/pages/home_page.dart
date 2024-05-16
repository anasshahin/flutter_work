import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/counter_bloc.dart';
import '../widgets/buttons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc work'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [

           BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is ColorValueChangedState) {
                  return Text('This is my counter : ', style: TextStyle(color:state.color),);
                }
                else{
                  return const Text('This is my counter : ', style: TextStyle(color:Colors.black),);
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),

            BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is CounterInitial) {
                    return const Text('0');
                  }
                  else if (state is CounterValueChangedState) {
                    return Text(state.counter.toString());
                  }
                  else {
                    return const SizedBox();
                  }
                }),
           ElevatedButton(onPressed: (){
              BlocProvider.of<CounterBloc>(context).add(ChangeColorEvent());
            }, child:const Text('Change Color'))
          ],
        ),
      ),
      floatingActionButton: const ButtonWidget(),
    );
  }
}
