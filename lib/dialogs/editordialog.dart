import 'package:flutter/material.dart';

import '../classes/day.dart';
import '../service/local_data_manager.dart';
import '../service/themes.dart';

void openEditDialog(
    int index,
    Map<String, Day> days,
    String dateString,
    BuildContext context,
    VoidCallback refresh,
    ) {
  final note = days[dateString]!.notes[index];

  TextEditingController titleController =
  TextEditingController(text: note.title);

  TextEditingController textController =
  TextEditingController(text: note.text);

  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(

        title: Text("Edit Note", style: TextStyle(color: foregroundColor)),
        backgroundColor: background1Color,
        content: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                // TITLE
                TextField(
                  controller: titleController,
                  maxLength: 30,
                  decoration: InputDecoration(
                    labelText: "Title",

                    labelStyle: TextStyle(color: foregroundColor),
                    counterStyle: TextStyle(color: foregroundColor),


                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: foregroundColor,
                        width: 1.5,
                      ),
                    ),


                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: accentColor,
                        width: 1.5,
                      ),
                    ),

                  ),

                  style: TextStyle(color: foregroundColor)
                ),

                const SizedBox(height: 16),

                // CONTENT
                TextField(
                  controller: textController,
                  maxLength: 3000,
                  maxLines: 10,
                  minLines: 5,
                  decoration: InputDecoration(
                    labelText: "Content",

                    alignLabelWithHint: true,
                    labelStyle: TextStyle(color: foregroundColor),
                    counterStyle: TextStyle(color: foregroundColor),


                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: foregroundColor,
                        width: 1.5,
                      ),
                    ),


                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: accentColor,
                        width: 1.5,
                      ),
                    ),
                  ),
                  style: TextStyle(color: foregroundColor)
                ),
              ],
            ),
          ),
        ),

        actions: [

          // CANCEL
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },

            child: Text("Cancel", style: TextStyle(color: accentColor) ),
          ),

          // SAVE
          TextButton(
            onPressed: () {
              if (titleController.text.trim().isEmpty) return;

              note.title = titleController.text;
              note.text = textController.text;

              saveMap(days);

              refresh();
              Navigator.pop(context);
            },

            child: Text("Save",  style: TextStyle(color: accentColor) ),
          ),
        ],
      );
    },
  );
}