import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sport_tracker/routes/routes_name.dart';
import 'package:sport_tracker/settings/bloc/settings_bloc.dart';

import 'package:sport_tracker/settings/settings_switch.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    final brightness = context.watch<SettingsBloc>().state.brightness;
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
            onChanged: (value) { setState(() {
              context.read<SettingsBloc>().add(SettingsEvent.setBrightness(
                  value ? Brightness.dark : Brightness.light));
            });
              
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
  }
}
