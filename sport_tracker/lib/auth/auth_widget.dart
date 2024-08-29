import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/bloc/auth_bloc.dart';
import 'package:sport_tracker/enter_screen.dart';
import 'package:sport_tracker/error_widget.dart';
import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
          loading: () => StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const EnterScreen();
              }
              final user = snapshot.data!;
              user.reload();
              if (user.emailVerified) {
                return const TrakerListWidget();
              } else {
                return  Scaffold(body: ErrorDialogWidget(error: 'Email is not verificated'.tr(),));
              }
            },
          ),
          auteficated: (_) => const TrakerListWidget(),
          unauteficated: () =>const EnterScreen()
        );
      },
    );
    
  }
}
