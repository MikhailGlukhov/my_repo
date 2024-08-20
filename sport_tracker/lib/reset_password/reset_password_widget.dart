import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/auth/auth_widget.dart';
import 'package:sport_tracker/reset_password/bloc/reset_bloc.dart';
import 'package:sport_tracker/routes/routes_name.dart';

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
        title:  Text(
          'Reset Password'.tr(),
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
                    succes: () => context.pushNamed(RoutesName.homeScreenName));
              },
              child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<ResetBloc>()
                        .add(ResetEvent.sendingEmail(_emailController.text));
                    
                  },
                  child:  Text(
                    'Reset password'.tr(),
                    style: const TextStyle(fontSize: 22),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
