import 'dart:convert';
import 'dart:io';

import 'package:flutter_file_dialog/flutter_file_dialog.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import '../classes/globals.dart';

Future<void> exportBackup() async {
  try {
    final date = DateFormat('ddMMyyyy-hhmmss').format(DateTime.now());

    final Map<String, dynamic> jsonMap = days.value.map(
          (key, day) => MapEntry(key, day.toJson()),
    );

    final jsonString = jsonEncode(jsonMap);


    final tempDir = await getTemporaryDirectory();
    final tempFile = File('${tempDir.path}/back-$date.json');
    await tempFile.writeAsString(jsonString);


    await FlutterFileDialog.saveFile(
      params: SaveFileDialogParams(
        sourceFilePath: tempFile.path,
        fileName: 'HoloNotes/back-$date.json',

      ),
    );

    print("Backup exported to Downloads");
  } catch (e, stack) {
    print("Backup failed: $e");
    print(stack);
  }
}