import 'package:flutter/material.dart';

class Task{
  final String title;
   bool isComplete;

  Task({required this.title, required this.isComplete});

  void isDone(){
    isComplete = !isComplete;
  }
}

class AddTask extends ChangeNotifier{
  List<Task> _tasks =[];

  List<Task> get tasks => _tasks;

  void saveTask(Task task){
    tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    notifyListeners();
  }
}
