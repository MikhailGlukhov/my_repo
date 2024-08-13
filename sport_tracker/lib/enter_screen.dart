import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:sport_tracker/routes/routes_name.dart';


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
                
                context.pushNamed(RoutesName.settingsScreenName);
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
         
          ElevatedButton(
              onPressed: () {context.pushNamed(RoutesName.signInScreenName);},
              child: const Text(
                '    Log In    ',
                style: TextStyle(fontSize: 22),
              )),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
              onPressed: () {context.pushNamed(RoutesName.signUpScreenName);},
              child: const Text(
                'Registration',
                style: TextStyle(fontSize: 22),
              )),
        ],
      )),
    );
  }
}