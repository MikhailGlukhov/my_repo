import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Timer? timer;
  late int roundSeconds = 60;
  late int seconds = roundSeconds;
  
  
  void resetTimer() {
    setState(() {
      seconds = roundSeconds;
    });
  }

  void startTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        stopTimer(reset: false);
      }
    });
  }

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() {
      timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    
    
 

    final isRunning = timer == null ? false : timer!.isActive;
    final isCompleted = seconds == roundSeconds || seconds == 0;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: seconds / roundSeconds,
                  strokeWidth: 10,
                  color: Colors.yellow,
                  backgroundColor: Colors.green,
                ),
                Center(
                  child: Text(
                    '$seconds',
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          isRunning || !isCompleted
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          if (isRunning) {
                            stopTimer(reset: false);
                          } else {
                            startTimer(reset: false);
                          }
                        },
                        child: isRunning
                            ? const Text('Pause')
                            : const Text('Resume')),
                    ElevatedButton(
                        onPressed: () {
                          stopTimer();
                        },
                        child: const Text('Cancel')),
                  ],
                )
              : ElevatedButton(
                  onPressed: () {
                    startTimer();
                  },
                  child: const Text('Start workout')),
          const SizedBox(
            height: 20,
          ),
          
        ],
      )),
    );
  }
}
