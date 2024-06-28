import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/model/task_model.dart';

class SharedPreference {
   List<TaskModel> _tasks = [];

  List<TaskModel> get tasks => _tasks;

 


  
   Future updateSharedPreference() async {
    List<String> myTask = tasks.map((e) => json.encode(e.toJson())).toList();
    SharedPreferences pref = await SharedPreferences.getInstance();

    await pref.setStringList('tasks', myTask);
  }

  Future syncData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var result = pref.getStringList('tasks');

    if (result != null) {
      _tasks = result.map((e) => TaskModel.fromJson(json.decode(e))).toList();
    }
    
  }
}