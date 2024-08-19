import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/settings/cubit/settings_cubit.dart';


import 'package:sport_tracker/settings/settings_switch.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
     final brightness = context.watch<SettingsCubit>().state.brightness;
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Settings',
            ),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SettingsSwitch(
                title: 'Dark Theme',
                value: brightness == Brightness.dark,
                onChanged: (value) {
                  context.read<SettingsCubit>().setBrightnessTheme(value ? Brightness.dark : Brightness.light);
                                  
                  
                },
              ),
              SettingsSwitch(
                title: 'Ru Local',
                value: false,
                onChanged: (v) {},
              ),
            ],
          )),
        );
      },
    );
  }
}
