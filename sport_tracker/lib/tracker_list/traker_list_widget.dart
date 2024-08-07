import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sport_tracker/enter_screen.dart';
import 'package:sport_tracker/log_in/bloc/sign_in_bloc.dart';
import 'package:sport_tracker/settings/settings_widget.dart';
import 'package:sport_tracker/timer/timer_widget.dart';

class TrakerListWidget extends StatelessWidget {
  const TrakerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.read<SignInBloc>().add(const SigInEvent.logOut());
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EnterScreen()));
              },
              icon: const Icon(Icons.exit_to_app)),
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SettingsWidget()));
              },
              icon: const Icon(Icons.settings))
        ],
        centerTitle: true,
        title: const Text('Sport Tracker'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.all(10),
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border:
                          Border.all(color: const Color.fromARGB(82, 0, 0, 0))),
                  child: ListTile(
                    title: Text('Heavy bag combo'),
                    trailing: Container(
                      height: 15,
                      width: 15,
                      child: Icon(Icons.check_box),
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Rounds: 8'),
                        Text('Time: 2min'),
                        Text('Total time: 16min')
                      ],
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const TimerWidget()));
                    },
                  ));
            }),
      ),
    );
  }
}
