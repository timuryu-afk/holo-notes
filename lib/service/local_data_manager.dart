import 'dart:convert';

import 'package:holo_notes/classes/day.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveMap(Map<String, Day> data) async {
  final prefs = await SharedPreferences.getInstance();

  final jsonString = jsonEncode(
    data.map((key, value) => MapEntry(key, value.toJson())),
  );

  await prefs.setString('notes', jsonString);
}


Future<Map<String, Day>> loadMap() async {
  final prefs = await SharedPreferences.getInstance();

  final jsonString = prefs.getString('notes');

  if (jsonString == null) {
    return {};
  }

  final decoded = jsonDecode(jsonString) as Map<String, dynamic>;

  return decoded.map((key, value) {
    return MapEntry(
      key,
      Day.fromJson(value as Map<String, dynamic>),

    );
  });
}