import 'package:flutter/material.dart';
import '../classes/day.dart';
import '../service/themes.dart';

class NotesList extends StatelessWidget {
  final ValueNotifier<Map<String, Day>> days;
  final String dateString;

  final void Function(int index) onEdit;
  final void Function(int index) onOptions;

  const NotesList({
    super.key,
    required this.days,
    required this.dateString,
    required this.onEdit,
    required this.onOptions,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<String, Day>>(
      valueListenable: days,
      builder: (context, value, _) {
        final notes = value[dateString]?.notes ?? [];

        return ListView.separated(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          itemCount: notes.length,

          itemBuilder: (context, index) {
            final note = notes[index];

            return GestureDetector(
              onTap: () => onEdit(index),
              onLongPress: () => onOptions(index),

              child: Container(
                constraints: const BoxConstraints(minHeight: 50),
                color: backgroundNoteColor,
                padding: const EdgeInsets.all(8),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.title,
                      style: TextStyle(
                        color: titleTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      note.text,
                      style: TextStyle(
                        color: foregroundColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
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
    );
  }
}