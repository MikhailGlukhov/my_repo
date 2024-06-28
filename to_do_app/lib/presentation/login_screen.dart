
import 'package:flutter/material.dart';
import 'package:to_do_app/registration_screen.dart';
import 'package:to_do_app/sevices/auth.dart';


const hintTextStyle =
    TextStyle(fontWeight: FontWeight.w400, color: Colors.blueGrey);

final containerDecoration = BoxDecoration(boxShadow: const [
  BoxShadow(
      color: Colors.brown, blurRadius: 5, spreadRadius: 2, offset: Offset(0, 3))
], borderRadius: BorderRadius.circular(20), color: Colors.amber.shade100);

const appBarTextStyle = TextStyle(
    fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blueGrey);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        title: const Text('Please Sign in or Register', style: appBarTextStyle),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
            const SizedBox(
              height: 25,
            ),
            Container(
                decoration: containerDecoration,
                child: TextFormField(
                  textInputAction: TextInputAction.done,
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    hintStyle: hintTextStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )),
           // _errorMessage(),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Auth().signInWithEmailAndPassword(email: _emailAdressController.text,
                   password: _passwordController.text,
                    context: context); 
                
                },
                child: const Text(
                  'Enter',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 35,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegistrationScreen()));
                },
                child: const Text(
                  'Registration',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
