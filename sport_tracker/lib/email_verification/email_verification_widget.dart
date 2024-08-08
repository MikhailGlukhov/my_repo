import 'package:flutter/material.dart';

import 'package:sport_tracker/auth/auth_repository.dart';





class EmailVerificationWidget extends StatelessWidget {
  const EmailVerificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ElevatedButton(
            onPressed: () {
              // context
              //     .read<VerificationBloc>()
              //     .add(const VerificationEvent.sendEmailVerification());
              AuthRepository().sendEmailVerification();
            },
            child: const Row(
              children: [Icon(Icons.email), Text('Verificate your email')],
            )),
      ),
    ));
  }
}
