import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/auth/bloc/auth_bloc.dart';
import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/registration/bloc/sign_up_bloc.dart';
import 'package:sport_tracker/sport_tracker.dart';

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;
  const MyApp(this.authRepository, {super.key} );

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider<AuthBloc>(create: (_) => AuthBloc(authRepository: authRepository)),
      BlocProvider(create: (_) => SignUpBloc(authRepository)),
      BlocProvider(create: (_) => SignInBloc(authRepository))
    ],
    child: const SportTracker());
  }
}