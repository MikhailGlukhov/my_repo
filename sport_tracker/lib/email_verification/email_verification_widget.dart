import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';



import 'package:sport_tracker/email_verification/bloc/verification_bloc.dart';
import 'package:sport_tracker/routes/routes_name.dart';


class EmailVerificationWidget extends StatelessWidget {
  const EmailVerificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: BlocListener<VerificationBloc, VerificationState>(
          listener: (context, state) {
            state.when(
                initial: () => const CircularProgressIndicator(),
                inProcess: () => const CircularProgressIndicator(),
                sentEmail: () => context.pushNamed(RoutesName.homeScreenName));
          },
          child: ElevatedButton(
              onPressed: () {
                context
                    .read<VerificationBloc>()
                    .add(const VerificationEvent.sendEmailVerification());
                    
              },
              child: const Row(
                children: [Icon(Icons.email), Text('Verificate your email')],
              )),
        ),
      ),
    ));
  }
}