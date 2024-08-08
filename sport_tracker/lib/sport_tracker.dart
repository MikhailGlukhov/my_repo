import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_widget.dart';
import 'package:sport_tracker/auth/bloc/auth_bloc.dart';
import 'package:sport_tracker/enter_screen.dart';

import 'package:sport_tracker/tracker_list/traker_list_widget.dart';

class SportTracker extends StatelessWidget {
  const SportTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              titleMedium: TextStyle(fontSize: 18),
              titleLarge:
                  TextStyle(fontSize: 36, fontWeight: FontWeight.w600))),
      home: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.when(
              loading: () => const EnterScreen(),
              auteficated: (_) => const AuthWidget(),
              unauteficated: () => const AuthWidget());
        },
      ),
      
    );
  }
}
