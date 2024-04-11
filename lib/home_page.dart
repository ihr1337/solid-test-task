import 'package:flutter/material.dart';

import 'package:solid_test_task/common/common_methods.dart';

/// This is the home page of the application
class HomePage extends StatefulWidget {
  /// Constructor for [HomePage]
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  void changeBackgroundColor() {
    setState(() {
      backgroundColor = CommonMethods.returnRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: changeBackgroundColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(
            'Test task',
            style: CommonMethods.returnContrastColor(backgroundColor),
          ),
          backgroundColor: backgroundColor,
        ),
        body: Center(
          child: Text(
            'Hello there!\nTap anywhere to change background color!',
            textAlign: TextAlign.center,
            style: CommonMethods.returnContrastColor(backgroundColor),
          ),
        ),
      ),
    );
  }
}
