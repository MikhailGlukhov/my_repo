import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/registration/bloc/sign_up_bloc.dart';
import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class RegistrationWidget extends StatefulWidget {
  const RegistrationWidget({super.key});

  @override
  State<RegistrationWidget> createState() => _RegistrationWidgetState();
}

class _RegistrationWidgetState extends State<RegistrationWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
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
      body: BlocListener<SignUpBloc, SignUpState>(
        listener: (context, state) {
          state.when(
            initial: () => const CircularProgressIndicator(),
            inProgress: () => const CircularProgressIndicator(),
            sucess: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TrakerListWidget())),
            error: (_) => const CircularProgressIndicator(),
          );
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border:
                        Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
                margin: const EdgeInsets.all(20),
                child: TextFormField(
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  controller: _emailController,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
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
                    border:
                        Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
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
                    context.read<SignUpBloc>().add(SignUpEvent.registrating(
                        email: _emailController.text,
                        password: _passwordController.text));
                  },
                  child: const Text(
                    'Registration',
                    style: TextStyle(fontSize: 22),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
