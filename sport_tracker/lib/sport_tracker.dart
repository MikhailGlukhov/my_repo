import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import 'package:sport_tracker/routes/routes.dart';

import 'package:sport_tracker/settings/cubit/settings_cubit.dart';

class SportTracker extends StatelessWidget {
  const SportTracker({super.key});

  @override
  Widget build(BuildContext context) {
   
        return BlocBuilder<SettingsCubit, SettingsState>(
          builder: (context, state) {
            return MaterialApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              routerConfig: Routes.returnRouter(),
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  brightness: state.brightness == Brightness.dark
                      ? Brightness.dark
                      : Brightness.light,
                  textTheme: const TextTheme(
                      titleMedium: TextStyle(fontSize: 18),
                      titleLarge: TextStyle(
                          fontSize: 28, fontWeight: FontWeight.w600))),
            );
          },
        );
      }
   
}
