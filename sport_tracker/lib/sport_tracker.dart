import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/routes/routes.dart';
import 'package:sport_tracker/settings/bloc/settings_bloc.dart';

class SportTracker extends StatelessWidget {
  const SportTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return MaterialApp.router(
          routerConfig: Routes.returnRouter(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(brightness: state.brightness,
              textTheme: const TextTheme(
                  titleMedium: TextStyle(fontSize: 18),
                  titleLarge:
                      TextStyle(fontSize: 36, fontWeight: FontWeight.w600))),
        );
      },
    );
  }
}
