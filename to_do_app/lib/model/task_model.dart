class TaskModel {
  String uid;
  String title;
  bool isComplete;

  TaskModel({required this.title, required this.isComplete,required this.uid });

  isDone() {
    isComplete = !isComplete;
  }

  Map<String, Object> toJson() => {'uid': uid,'title': title, 'isComplete': isComplete};

  TaskModel.fromJson(Map json)
      : uid = json['uid'],
        title = json['title'],
        isComplete = json['isComplete'];
}
