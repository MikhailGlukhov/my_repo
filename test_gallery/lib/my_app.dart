import 'package:flutter/material.dart';
import 'package:test_gallery/galery_widget.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,home: GaleryWidget(),);
  }
}