import 'package:flutter/material.dart';

extension ExtendedWidget on Widget {
  padAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  padSym(double horizontal, double vertical) => Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  align(alignment) => Align(
        alignment: alignment,
        child: this,
      );
}
