import 'package:flutter/widgets.dart';

extension SizedBoxExt on num {
  SizedBox get height => SizedBox(height: toDouble());
  SizedBox get width => SizedBox(width: toDouble());
}

extension MediaQueryScreen on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension Edge on double {
  EdgeInsetsGeometry get paddingAll => EdgeInsets.all(this);
}
