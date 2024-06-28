import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app/model/task_model.dart';

class Firestore{

  FirebaseFirestore db = FirebaseFirestore.instance;

  Stream<List<TaskModel>> listTask(){
    return db.collection('tasks').orderBy('Time', descending: true).snapshots().map(taskFromFirestore);
  }

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

  List<TaskModel> taskFromFirestore(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      Map<String, dynamic>? data = e.data() as Map<String, dynamic>?;
      return TaskModel(
          uid:e.id, title: data?['title'] ?? '', isComplete: data?['isComplete'] ?? true);
    }).toList();
  }


}