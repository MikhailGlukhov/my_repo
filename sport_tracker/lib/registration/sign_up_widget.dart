import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/gen/assets.gen.dart';


import 'package:sport_tracker/registration/bloc/sign_up_bloc.dart';
import 'package:sport_tracker/routes/routes_name.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
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
        title:  Text(
          'Registration'.tr(),
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
                  hintText: 'Enter your email address'.tr(),
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: ImageIcon(AssetImage(Assets.icons.mail.path), size: 24,),
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
                  hintText: 'Enter your password'.tr(),
                  hintStyle: const TextStyle(fontSize: 16),
                  prefixIcon: ImageIcon(AssetImage(Assets.icons.pass.path), size: 24,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            BlocListener<SignUpBloc, SignUpState>(
              listener: (context, state) {
                state.when(
                  initial: () => const CircularProgressIndicator(),
                  inProgress: () => const CircularProgressIndicator(),
                  sucess: () => context.pushNamed(RoutesName.verificationScreenName),
                  error: (error) => context.pushNamed(RoutesName.errorScreenName),
                );
              },
              child: ElevatedButton(
                  onPressed: () {
                    context.read<SignUpBloc>().add(SignUpEvent.registrating(
                        email: _emailController.text,
                        password: _passwordController.text));
                  },
                  child:  Text(
                    'Registration'.tr(),
                    style: const TextStyle(fontSize: 22),
                  ), style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width*0.7, 40),side: BorderSide(color: Color.fromRGBO(171, 92, 196, 0.815),width: 2)),),
            ),
          ],
        ),
      ),
    );
  }
}
