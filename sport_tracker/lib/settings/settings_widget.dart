import 'package:flutter/material.dart';

import 'package:sport_tracker/settings/settings_switch.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            value: true,
            onChanged: (v) {},
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
