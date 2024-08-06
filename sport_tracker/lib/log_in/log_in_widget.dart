import 'package:flutter/material.dart';
import 'package:sport_tracker/reset_password/reset_password_widget.dart';
import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class LogInWidget extends StatefulWidget {
  const LogInWidget({super.key});

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Log In',
        ),
        centerTitle: true,
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
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                autofocus: true,
                textInputAction: TextInputAction.done,
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const TrakerListWidget()));
                },
                child: const Text(
                  '   Log In   ',
                  style: TextStyle(fontSize: 22),
                )),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResetPasswordWidget()));
                },
                child: const Text(
                  'Reset passowrd',
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
