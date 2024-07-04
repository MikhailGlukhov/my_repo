import 'package:flutter/material.dart';

import 'package:to_do_app/sevices/auth.dart';
import 'package:to_do_app/theme/custom_box_decoration.dart';
import 'package:to_do_app/theme/custom_text_style.dart';

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
         
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
              decoration: CustomBoxDecoration.containerDecoration,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                controller: _emailAdressController,
                decoration: InputDecoration(
                  hintText: 'Enter your email adress',
                  hintStyle: CustomTextStyle.hintStyle,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              )),
          const SizedBox(height: 35),
          ElevatedButton(
              onPressed: () {Auth().resetPassword(_emailAdressController.text);},
              child: const Text(
                'Reset Password',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )),
        ]),
      ),
    );
  }
}
