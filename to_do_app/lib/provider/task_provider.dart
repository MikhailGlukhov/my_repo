import 'package:flutter/material.dart';

import 'package:to_do_app/sevices/firestore.dart';

class AddTask extends ChangeNotifier {
  saveTask(String title) {
    Firestore().fillDb(title);

    notifyListeners();
  }

  deleteTask(uid) {
    Firestore().removeTask(uid);

    notifyListeners();
  }

  void checkTask(uid, newComplete) {
    Firestore().updateTask(uid, newComplete);

    notifyListeners();
  }
}
