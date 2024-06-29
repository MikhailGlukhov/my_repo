
import 'package:flutter/material.dart';
import 'package:to_do_app/presentation/login_screen.dart';
import 'package:to_do_app/sevices/auth.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _emailAdressController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  void dispose() {
   _emailAdressController.dispose();
   _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Registration', style: appBarTextStyle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: containerDecoration,
              child: TextFormField(
                controller: _emailAdressController,
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter your email adress',
                    hintStyle: hintTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              decoration: containerDecoration,
              child: TextFormField(
                controller: _passwordController,
                textInputAction: TextInputAction.next,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: hintTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
       
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () {
                  Auth().createUserWithEmailAndPassword(email: _emailAdressController.text,
                   password: _passwordController.text,
                    context: context);
                
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
