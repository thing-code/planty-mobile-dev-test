import 'package:intl/intl.dart';

extension DateExt on DateTime {
  String get dateF => DateFormat('dd MMM yyyy').format(this);
  String get timeF => DateFormat('hh:mm a').format(this);
}

extension NumberX on num {
  String get toMYR => NumberFormat.currency(
    locale: 'en_MY',
    symbol: 'RM',
    decimalDigits: 2,
  ).format(this);

  String get toThousand => NumberFormat.decimalPattern().format(this);
}
