import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


import 'package:sport_tracker/gen/assets.gen.dart';



import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/reset_password/reset_password_widget.dart';
import 'package:sport_tracker/routes/routes_name.dart';

class SignInWidget extends StatefulWidget {
  const SignInWidget({super.key});

  @override
  State<SignInWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<SignInWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Log In'.tr(),
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
            BlocListener<SignInBloc, SignInState>(
              listener: (context, state) {
                state.when(
                    initial: () => const CircularProgressIndicator(),
                    inProcess: () => const CircularProgressIndicator(),
                    sucess:  () => context.pushReplacementNamed(RoutesName.homeScreenName),
                    error: (error) => context.pushNamed(RoutesName.errorScreenName,));
              },
              child: ElevatedButton(
                  onPressed: () {
                    context.read<SignInBloc>().add(SigInEvent.logIn(
                        email: _emailController.text,
                        password: _passwordController.text));
                   
                  }, style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width*0.7, 40),side: BorderSide(color: Color.fromRGBO(171, 92, 196, 0.815),width: 2)),
                  child:  Text(
                    '    Log In    '.tr(),
                    style: TextStyle(fontSize: 22),
                  ),),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ResetPasswordWidget()));
                }, style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width*0.7, 40),side: BorderSide(color: Color.fromRGBO(171, 92, 196, 0.815),width: 2)),
                child:  Text(
                  'Reset passowrd'.tr(),
                  style:const TextStyle(fontSize: 22),
                ),)
          ],
        ),
      ),
    );
  }
}
