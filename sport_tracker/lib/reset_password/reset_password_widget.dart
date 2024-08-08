import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_widget.dart';
import 'package:sport_tracker/reset_password/bloc/reset_bloc.dart';

class ResetPasswordWidget extends StatefulWidget {
  const ResetPasswordWidget({super.key});

  @override
  State<ResetPasswordWidget> createState() => _ResetPasswordWidgetState();
}

class _ResetPasswordWidgetState extends State<ResetPasswordWidget> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

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
                controller: _emailController,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter your email address',
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: const Icon(Icons.mail),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            BlocListener<ResetBloc, ResetState>(
              listener: (context, state) {
                state.when(
                    initial: () => const AuthWidget(),
                    succes: () => const AuthWidget());
              },
              child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<ResetBloc>()
                        .add(ResetEvent.sendingEmail(_emailController.text));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const AuthWidget()));
                  },
                  child: const Text(
                    'Reset password',
                    style: TextStyle(fontSize: 22),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
