class Note {
  String title;
  String text;
  bool isFavourited;

  Note({
    required this.title,
    required this.text,
    this.isFavourited = false,
  });

  Map<String, dynamic> toJson() => {
    'title': title,
    'text': text,
    'isFavourited': isFavourited,
  };

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      title: json['title'] ?? '',
      text: json['text'] ?? '',
      isFavourited: json['isFavourited'] ?? false,
    );
  }
}