import 'package:flutter/material.dart';

class CSPColors {
  // BACKGROUND COLORS
  static var primaryColor = HexColor('#4f4888');
  static var backgroundDarkColor = HexColor('#2c2f38');
  static var backgroundLightColor = HexColor('#ffffff');

  // TEXT COLORS
  static var textColor = HexColor('#f2f2f2');
}

// Parse hex to color.
class HexColor extends Color {
  final String valueString;

  static int _getColorFromHex(hexColor) {
    hexColor ??= '#FFFFFF';
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(this.valueString) : super(_getColorFromHex(valueString));
}
