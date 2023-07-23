import 'package:flutter/material.dart';
import 'package:flutter_application_themovie/my_app.dart';
import 'package:flutter_application_themovie/my_app_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final model =MyAppModel();
  await model.checAuth();
  final app = MyApp(model: model);
  runApp(app);
}
