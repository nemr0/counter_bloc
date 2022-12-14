import 'package:counter_bloc/ui/counter_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // project run point
  runApp(const MyApp());
}

/// Material App Config
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter with BLoC',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const CounterScreen(title: 'Counter W/ BLoC'),
    );
  }
}
