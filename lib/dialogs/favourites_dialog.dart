import 'package:flutter/material.dart';

import '../classes/day.dart';
import '../classes/note.dart';
import '../service/themes.dart';

void showFavouritesDialog({
  required BuildContext context,
  required ValueNotifier<Map<String, Day>> days,
  required String dateString,



  required void Function(String dateString) onChangeDate,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: background1Color,

        title: Text(
          'Favourited notes',
          style: TextStyle(color: foregroundColor),
        ),

        content: SizedBox(
          width: double.maxFinite,
          height: 400,
          child: ValueListenableBuilder<Map<String, Day>>(
            valueListenable: days,
            builder: (context, value, _) {


              final allEntries = value.entries.toList();


              final favouriteNotes = <({
              String date,
              int index,
              Note note
              })>[];

              for (final entry in allEntries) {
                final date = entry.key;
                final notes = entry.value.notes;

                for (int i = 0; i < notes.length; i++) {
                  final note = notes[i];

                  if (note.isFavourited) {
                    favouriteNotes.add((
                    date: date,
                    index: i,
                    note: note,
                    ));
                  }
                }
              }

              if (favouriteNotes.isEmpty) {
                return Center(
                  child: Text(
                    'No favourited notes',
                    style: TextStyle(color: foregroundColor),
                  ),
                );
              }

              return ListView.separated(
                itemCount: favouriteNotes.length,

                itemBuilder: (context, i) {
                  final item = favouriteNotes[i];

                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();


                      onChangeDate(item.date);


                    },


                    child: Container(
                      constraints: const BoxConstraints(minHeight: 50),
                      color: backgroundNoteColor,
                      padding: const EdgeInsets.all(8),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.note.title,
                            style: TextStyle(
                              color: titleTextColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            item.note.text,
                            style: TextStyle(
                              color: foregroundColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          const SizedBox(height: 5),

                          Text(
                            item.date,
                            style: TextStyle(
                              color: accentColor,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },

                separatorBuilder: (context, index) {
                  return Divider(
                    color: accentColor,
                    thickness: 1,
                  );
                },
              );
            },
          ),
        ),

        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Close',
              style: TextStyle(color: accentColor),
            ),
          ),
        ],
      );
    },
  );
}