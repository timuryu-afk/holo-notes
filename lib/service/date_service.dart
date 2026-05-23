import 'package:intl/intl.dart';

void changeDayMinus({
  required String dateString,
  required void Function(String newDate) onChanged,
}) {
  DateTime date = DateFormat("dd.MM.yyyy").parse(dateString);

  date = date.subtract(const Duration(days: 1));

  String newDate = DateFormat("dd.MM.yyyy").format(date);

  onChanged(newDate);
}

void changeDayPlus({
  required String dateString,
  required void Function(String newDate) onChanged,
}) {
  DateTime date = DateFormat("dd.MM.yyyy").parse(dateString);

  date = date.add(const Duration(days: 1));

  String newDate = DateFormat("dd.MM.yyyy").format(date);

  onChanged(newDate);
}