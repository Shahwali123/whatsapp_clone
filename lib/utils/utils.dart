import 'package:flutter/cupertino.dart';

class Utils {
  static late double width;
  static late double height;

  Utils(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}
