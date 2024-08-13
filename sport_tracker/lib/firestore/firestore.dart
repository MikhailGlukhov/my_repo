

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sport_tracker/models/sport_track.dart';


class FirestoreRepository{


 var collection = FirebaseFirestore.instance.collection('user').doc(FirebaseAuth.instance.currentUser!.uid).collection('tracks');

 List<SportTrack> trackFromFirestore(QuerySnapshot snapshot){
  return snapshot.docs.map((e) {
    Map<String, dynamic>? data = e.data() as Map<String, dynamic>?;
    return SportTrack(uid: e.id, title: data?['title'] ?? '', isCompleted: data?['isCompleted'] ?? true, roundTime: data?['roundTime'] ?? 0);
  }).toList();
 }

Stream<List<SportTrack>> listSportTrack(){
  return collection.orderBy('Time', descending: true).snapshots().map(trackFromFirestore);
}

Future<void> upDateDb(String uid, bool newComplete) async{
  await collection.doc(uid).update({'isCompleted': newComplete});
}

Future<void> addToDb(String title, bool isCompleted, int roundTime) async{
 await collection.add({'title' : title,'isCompleted': false,'roundTime' : roundTime,'Time': FieldValue.serverTimestamp()});
}

Future<void> deleteFromDb(String uid) async{
 await collection.doc(uid).delete();
}
}