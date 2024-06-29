
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:to_do_app/model/task_model.dart';


class Firestore {

 

  
  FirebaseFirestore db = FirebaseFirestore.instance;

 
   var newCollection = FirebaseFirestore.instance.collection('user').doc(FirebaseAuth.instance.currentUser!.uid).collection('tasks'); 




  Stream<List<TaskModel>> listTask(){
  
   return newCollection.orderBy('Time', descending: true).snapshots().map(taskFromFirestore);
  }

   Future<void> fillDb(String title) async {
   
    await newCollection.add({'title': title, 'isComplete': false, 'Time': FieldValue.serverTimestamp()});
    

    
  }

  Future<void> updateTask(uid, bool newComplete) async {
    
   
   await newCollection.doc(uid).update({'isComplete': newComplete});
  }

  Future<void> removeTask(uid) async {
    
    await newCollection.doc(uid).delete();
  }

  List<TaskModel> taskFromFirestore(QuerySnapshot snapshot) {
    return snapshot.docs.map((e) {
      Map<String, dynamic>? data = e.data() as Map<String, dynamic>?;
      return TaskModel(
          uid:e.id, title: data?['title'] ?? '', isComplete: data?['isComplete'] ?? true);
    }).toList();
  }


}
