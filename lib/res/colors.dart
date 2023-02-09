import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xff111B21);
  static const Color green = Color(0xff00A884);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color red = Colors.red;
  static Color grey = AppColor.white.withOpacity(0.5);

  static MaterialColor secondary = MaterialColor(0xff202C33, colorCodes);
}

Map<int, Color> colorCodes = {
  50: const Color.fromRGBO(32, 44, 51, .1),
  100: const Color.fromRGBO(32, 44, 51, .2),
  200: const Color.fromRGBO(32, 44, 51, .3),
  300: const Color.fromRGBO(32, 44, 51, .4),
  400: const Color.fromRGBO(32, 44, 51, .5),
  500: const Color.fromRGBO(32, 44, 51, .6),
  600: const Color.fromRGBO(32, 44, 51, .7),
  700: const Color.fromRGBO(32, 44, 51, .8),
  800: const Color.fromRGBO(32, 44, 51, .9),
  900: const Color.fromRGBO(32, 44, 51, 1),
};
