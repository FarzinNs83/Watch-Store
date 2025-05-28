import 'package:intl/intl.dart';

extension PriceCommaExt on int {
  String get priceCommaExt {
    final numFormat = NumberFormat.decimalPattern();
    return numFormat.format(this);
  }
}
