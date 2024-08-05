import 'package:flutter/material.dart';
import 'package:sport_tracker/timer/timer_widget.dart';

class TrakerListWidget extends StatelessWidget {
  const TrakerListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
