import 'package:flutter/material.dart';

class CustomBoxDecoration{
  static final BoxDecoration containerDecoration = BoxDecoration(boxShadow: const [
  BoxShadow(
      color: Colors.brown, blurRadius: 5, spreadRadius: 2, offset: Offset(0, 3))
], borderRadius: BorderRadius.circular(20), color: Colors.amber.shade100);
}