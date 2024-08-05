import 'package:flutter/material.dart';
import 'package:sport_tracker/log_in/log_in_widget.dart';
import 'package:sport_tracker/registration/registration_widget.dart';
import 'package:sport_tracker/settings/settings_widget.dart';

class EnterScreen extends StatelessWidget {
  const EnterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Sport Tracker',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SettingsWidget()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          ElevatedButton(
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LogInWidget()));},
              child: const Text(
                '    Log In    ',
                style: TextStyle(fontSize: 22),
              )),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegistrationWidget()));},
              child: const Text(
                'Registration',
                style: TextStyle(fontSize: 22),
              )),
        ],
      )),
    );
  }
}
