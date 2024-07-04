import 'package:flutter/material.dart';
import 'package:to_do_app/sevices/auth.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email verification'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body:  Center(
        child: ElevatedButton(
            onPressed: () {Auth().emailVerification();},
            child: const Text(
              'Verificate your email',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
