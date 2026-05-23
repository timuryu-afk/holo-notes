import 'note.dart';

class Day {
  List<Note> notes;

  Day({
    required this.notes,
  });

  Map<String, dynamic> toJson() => {
    'notes': notes.map((n) => n.toJson()).toList(),
  };

  factory Day.fromJson(Map<String, dynamic> json) {
    final rawNotes = json['notes'];

    if (rawNotes == null) {
      return Day(notes: []);
    }

    return Day(
      notes: (rawNotes as List)
          .map((n) => Note.fromJson(n as Map<String, dynamic>))
          .toList(),
    );
  }
}