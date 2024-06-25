import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/model/task_model.dart';

class AddTask extends ChangeNotifier{
  List<Task> _tasks =[];

  List<Task> get tasks => _tasks;

  AddTask(){
    initialState();
  }

  void initialState(){
    syncData();
  }

  


  void saveTask(Task task){
    tasks.add(task);
    updateSharedPreference();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    updateSharedPreference();
    notifyListeners();
  }

  void checkTask(int index){
    tasks[index].isDone();
    updateSharedPreference();
    notifyListeners();
  }

  Future updateSharedPreference() async {
    List<String> myTask = tasks.map((e) => json.encode(e.toJson())).toList();
   SharedPreferences pref = await SharedPreferences.getInstance();

   await pref.setStringList('tasks', myTask);
  }

  Future syncData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var result = pref.getStringList('tasks');

    if( result != null){
      _tasks = result.map((e) => Task.fromJson(json.decode(e))).toList();
    }
    notifyListeners();
  }
}
