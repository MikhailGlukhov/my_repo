import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/auth/auth_widget.dart';
import 'package:sport_tracker/auth/bloc/auth_bloc.dart';
import 'package:sport_tracker/enter_screen.dart';

class BuilderAppWidget extends StatelessWidget {
  const BuilderAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.when(
            loading: () => const EnterScreen(),
            auteficated: (_) => const AuthWidget(),
            unauteficated: () => const EnterScreen());
      },
    );
  }
}
