import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';

import '../classes/day.dart';
import '../classes/globals.dart';
import 'local_data_manager.dart';

Future<void> importBackup() async {
  try {
    // 1. pick JSON file from storage
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['json'],
    );

    if (result == null || result.files.single.path == null) {
      print("No file selected");
      return;
    }

    final file = File(result.files.single.path!);

    // 2. read file
    final jsonString = await file.readAsString();

    // 3. decode JSON
    final Map<String, dynamic> decoded =
    jsonDecode(jsonString) as Map<String, dynamic>;

    // 4. convert to Map<String, Day>
    final Map<String, Day> loadedDays = decoded.map(
          (key, value) => MapEntry(
        key,
        Day.fromJson(value as Map<String, dynamic>),
      ),
    );

    // 5. replace global state
    days.value = loadedDays;

    saveMap(days.value);

    print("Backup restored successfully");
  } catch (e, stack) {
    print("Import failed: $e");
    print(stack);
  }
}