import 'package:flutter/material.dart';

extension SizedBoxExt on num {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );
  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}

extension MediaQueryExt on BuildContext {
  Size get size => MediaQuery.of(this).size;
}
