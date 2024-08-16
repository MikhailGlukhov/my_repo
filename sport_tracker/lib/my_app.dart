import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sport_tracker/auth/auth_repository.dart';
import 'package:sport_tracker/auth/bloc/auth_bloc.dart';
import 'package:sport_tracker/email_verification/bloc/verification_bloc.dart';
import 'package:sport_tracker/firestore/bloc/bloc/fire_store_bloc.dart';
import 'package:sport_tracker/firestore/firestore.dart';
import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';

import 'package:sport_tracker/registration/bloc/sign_up_bloc.dart';
import 'package:sport_tracker/reset_password/bloc/reset_bloc.dart';
import 'package:sport_tracker/settings/bloc/settings_bloc.dart';
import 'package:sport_tracker/sport_tracker.dart';

import 'package:sport_tracker/timer_select/timer_service.dart';

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;
  final FirestoreRepository firestore;
  final TimerService time;
  const MyApp(
    this.authRepository,
    this.firestore,
    this.time, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<AuthBloc>(
              create: (_) => AuthBloc(authRepository: authRepository)),
          BlocProvider(create: (_) => SignUpBloc(authRepository)),
          BlocProvider(create: (_) => SignInBloc(authRepository)),
          BlocProvider(create: (_) => VerificationBloc(authRepository)),
          BlocProvider(create: (_) => ResetBloc(authRepository)),
          RepositoryProvider<FireStoreBloc>(
              create: (_) => FireStoreBloc(firestore)),
          ChangeNotifierProvider(create: (context) => TimerService()),
          BlocProvider(create: (context) => SettingsBloc())
        ],
        child: const SportTracker());
  }
}
