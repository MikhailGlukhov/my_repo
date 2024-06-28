import 'dart:convert';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/model/task_model.dart';

class AddTask extends ChangeNotifier {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

  FirebaseFirestore db = FirebaseFirestore.instance;

  Stream<List<Task>> ListTask(){
    return db.collection('tasks').orderBy('Time', descending: true).snapshots().map(taskFromFirestore);
  }



/* AddTask(){
    initialState();
  }

  void initialState(){
    syncData();
    
  }*/

  Future<void> fillDb(String title) async {
    await db
        .collection('tasks').add({'title': title, 'isComplete': false, 'Time': FieldValue.serverTimestamp()});
  }

  Future<void> updateTask(uid, bool newComplete) async {
    
    await db.collection('tasks').doc(uid).update({'isComplete': newComplete});
  }

  Future<void> removeTask(uid) async {
    await db.collection('tasks').doc(uid).delete();
  }

  List<Task> taskFromFirestore(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      Map<String, dynamic>? data = e.data() as Map<String, dynamic>?;
      return Task(
          uid:e.id, title: data?['title'] ?? '', isComplete: data?['isComplete'] ?? true);
    }).toList();
  }

  saveTask(String title) {
    fillDb(title);
     //await db.collection('tasks').add({'title': task.title, 'isComplete': task.isComplete});
    //updateSharedPreference();
    notifyListeners();
  }

  deleteTask(uid) {
    removeTask(uid);

    // updateSharedPreference();
    notifyListeners();
  }

  void checkTask(uid,newComplete) {
    updateTask(uid, newComplete);
    //tasks[index].isDone();
    //updateSharedPreference();
    notifyListeners();
  }

 /* Future updateSharedPreference() async {
    List<String> myTask = tasks.map((e) => json.encode(e.toJson())).toList();
    SharedPreferences pref = await SharedPreferences.getInstance();

    await pref.setStringList('tasks', myTask);
  }

  Future syncData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var result = pref.getStringList('tasks');

    if (result != null) {
      _tasks = result.map((e) => Task.fromJson(json.decode(e))).toList();
    }
    notifyListeners();
  }*/
}
