class Task {
  String title;
  bool isComplete;

  Task({required this.title, required this.isComplete});

  void isDone() {
    isComplete = !isComplete;
  }

  Map toJson() => {'title': title, 'isComplete': isComplete};

  Task.fromJson(Map json)
      : title = json['title'],
        isComplete = json['isComplete'];

 
}
