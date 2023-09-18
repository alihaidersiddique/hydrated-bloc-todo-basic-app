class Todo {
  final String title;
  final String subTitle;
  bool isDone;

  Todo({
    this.title = '',
    this.subTitle = '',
    this.isDone = false,
  });

  Todo copyWith({
    String? title,
    String? subTitle,
    bool? isDone,
  }) {
    return Todo(
      title: title ?? this.title,
      subTitle: subTitle ?? this.subTitle,
      isDone: isDone ?? this.isDone,
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      title: json['title'],
      subTitle: json['subTitle'],
      isDone: json['isDone'],
    );
  }

  Map<String, dynamic> toJson(Todo state) {
    return {
      'title': state.title,
      'subTitle': state.subTitle,
      'isDone': state.isDone,
    };
  }

  @override
  String toString() {
    return '''Todo { 
                    title: $title\n
                    subTitle: $subTitle\n 
                    isDone: $isDone\n 
            }''';
  }
}
