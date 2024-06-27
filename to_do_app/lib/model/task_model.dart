class Task {
  String uid;
  String title;
  bool isComplete;

  Task({required this.title, required this.isComplete,required this.uid });

  isDone() {
    isComplete = !isComplete;
  }

  Map<String, Object> toJson() => {'uid': uid,'title': title, 'isComplete': isComplete};

  Task.fromJson(Map json)
      : uid = json['uid'],
        title = json['title'],
        isComplete = json['isComplete'];
}
