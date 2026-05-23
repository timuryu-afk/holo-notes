import 'package:intl/intl.dart';

String convertDate(String input)
{

  // Parse input (dd.MM.yyyy)
  DateTime date = DateFormat("dd.MM.yyyy").parse(input);

  // Format to "May 7, 2026"
  return DateFormat("MMMM d, yyyy").format(date);

}