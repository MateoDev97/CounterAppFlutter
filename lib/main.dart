
import 'package:counter_app/views/counter_view.dart';
import 'package:flutter/material.dart';

//import 'package:counter_app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }

}