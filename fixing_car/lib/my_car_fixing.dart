import 'package:fixing_car/my_cars.dart';
import 'package:flutter/material.dart';

class MyCarFixing extends StatelessWidget {
  const MyCarFixing({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(theme: ThemeData(useMaterial3: false, primaryColor: const Color.fromARGB(87, 228, 188, 215),),
      debugShowCheckedModeBanner: false,
      home:  const MyCars(),
    );
  }
}
