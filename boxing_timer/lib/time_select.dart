import 'package:boxing_timer/clock.dart';
import 'package:flutter/material.dart';

class TimeSelect extends StatelessWidget {
  const TimeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text(
          'Boxers timer',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22),
        ),
      ),
      body: const InputTime(),
    );
  }
}

class InputTime extends StatefulWidget {
  const InputTime({super.key});

  @override
  State<InputTime> createState() => _InputTimeState();
}

class _InputTimeState extends State<InputTime> {
  final roundsController = TextEditingController();
  final timeController = TextEditingController();
  final restController = TextEditingController();
  
 late int? timeRound = int.tryParse(timeController.text);
 late int? timeRest = int.tryParse(restController.text);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'ROUNDS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                    width: 140,
                    child: TextField(controller: roundsController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'number of rounds',
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'TIME',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                    width: 140,
                    child: TextField(controller: timeController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'minutes',
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'REST',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                    width: 140,
                    child: TextField(controller: restController,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'seconds of rest',
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green)),
                  onPressed: () { 
                     Navigator.push(
                       context,
                        MaterialPageRoute(
                            builder: (context) =>  ClockWidget( timeRound: timeRound!, timeRest: timeRest!, )));
                   // Navigator.pushNamed(context, '/clock', arguments: timeRound!, timeRest:timeRest);
               
                   
                  },
                  child: const Text(
                    'START',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                    onPressed: () {
                      Navigator.popAndPushNamed(context, '/');

                    },
                    child: const Text(
                      'DELETE',
                      style: TextStyle(fontSize: 26),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
  
}
