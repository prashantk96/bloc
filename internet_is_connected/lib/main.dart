import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_is_connected/blocs/internet_bloc/internet_bloc.dart';
import 'package:internet_is_connected/screens/Homepage.dart';

void main() {
  runApp(const internetConnectivity());
}

// ignore: camel_case_types
class internetConnectivity extends StatelessWidget {
  const internetConnectivity({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetBloc(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.teal),
        debugShowCheckedModeBanner: false,
        home: const Homepage(),
      ),
    );
  }
}
