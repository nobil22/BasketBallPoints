import 'package:basketball_counter_app/cubit/counter/counter_cubit_cubit.dart';
import 'package:basketball_counter_app/home_bage.dart';
import 'package:cubit_form/cubit_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeBage(),
      ),
    );
  }
}
