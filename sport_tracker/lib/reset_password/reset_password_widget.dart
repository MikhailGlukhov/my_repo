import 'package:flutter/material.dart';

class ResetPasswordWidget extends StatefulWidget {
  const ResetPasswordWidget({super.key});

  @override
  State<ResetPasswordWidget> createState() => _ResetPasswordWidgetState();
}

class _ResetPasswordWidgetState extends State<ResetPasswordWidget> {
  final _phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Reset Password',
          
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                autofocus: true,
                textInputAction: TextInputAction.next,
                controller: _phoneNumberController,
                obscureText: false,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                 
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Reset password',
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
