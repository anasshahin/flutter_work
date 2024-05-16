import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_mangement_bloc/connectivity/bloc/internet_bloc.dart';
import 'package:state_mangement_bloc/connectivity/bloc/internet_bloc.dart';

class ConnectHomePage extends StatelessWidget {
  const ConnectHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: BlocBuilder<InternetBloc ,InternetState>(
          builder: (context, state) {
            if(state is ConnectedState){
              return Text(state.message);
            }
            else if (state is NotConnectedState){
              return Text(state.message);
            }else {
             return const Text('Not Connected');
            }
          },
        ),
      ),
    );
  }
}
