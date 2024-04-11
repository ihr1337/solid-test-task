import 'package:flutter/material.dart';
import 'package:solid_test_task/home_page.dart';

void main() => runApp(const Main());

/// This widget is the root of your application.
class Main extends StatelessWidget {
  /// Constructor for [Main]
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test task',
      home: HomePage(),
    );
  }
}
