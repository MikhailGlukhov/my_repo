import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/login_screen.dart';

class PasswordReset extends StatefulWidget {
  const PasswordReset({super.key});

  @override
  State<PasswordReset> createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  final _emailAdressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset your password',
          style: appBarTextStyle,
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
              decoration: containerDecoration,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                controller: _emailAdressController,
                decoration: InputDecoration(
                  hintText: 'Enter your email adress',
                  hintStyle: hintTextStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
          const SizedBox(height: 35),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Reset Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
        ]),
      ),
    );
  }
}
