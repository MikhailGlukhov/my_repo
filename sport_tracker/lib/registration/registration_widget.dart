import 'package:flutter/material.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _codeController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _codeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Registration',
         
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
                  hintText: 'Enter your phone number',
                  prefixText: '+7',
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(Icons.phone_iphone),
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
                controller: _codeController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter code from message',
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(Icons.password),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            ElevatedButton(onPressed: (){}, child:const Text(
                  'Registration',
                  style: TextStyle(fontSize: 22),
                ) ),
          ],
        ),
      ),
    );
  }
}
