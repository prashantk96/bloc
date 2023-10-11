// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_is_connected/blocs/internet_bloc/internet_bloc.dart';
import 'package:internet_is_connected/blocs/internet_bloc/internet_state.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: BlocBuilder<InternetBloc, InternetState>(
          builder: (context, state) {
            if (state is InternetGainedState) {
              return const Text("Connected");
            } else if (state is InternetLostState) {
              return const Text("Disconnected");
            } else {
              return const Text("loding....");
            }
          },
        ),
      )),
    );
  }
}
