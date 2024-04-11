import 'dart:math';

import 'package:flutter/material.dart';

/// In this class all common methods are placed
class CommonMethods {
  /// This method returns a random color
  static Color returnRandomColor() {
    int returnRandomInt() {
      final int = Random().nextInt(255);

      return int;
    }

    final colorToReturn = Color.fromARGB(
      returnRandomInt(),
      returnRandomInt(),
      returnRandomInt(),
      returnRandomInt(),
    );

    return colorToReturn;
  }

  /// This method returns the contrast color based on the background color
  static TextStyle returnContrastColor(Color colorForContrast) {
    /// I used computeLuminance to check
    /// if the background color is light or dark
    /// to set the text color accordingly
    /// and make it readable.

    const computeLuminanceValue = 0.5;

    return TextStyle(
      color: colorForContrast.computeLuminance() < computeLuminanceValue
          ? Colors.white
          : Colors.black,
    );
  }
}
