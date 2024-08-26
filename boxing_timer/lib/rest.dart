import 'package:boxing_timer/clock.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class RestClock extends StatefulWidget {
  final int timeRound;
  
  final int timeRest;
  const RestClock({super.key, required this.timeRest, required this.timeRound, });

  @override
  State<RestClock> createState() => _RestClockState();
}

class _RestClockState extends State<RestClock> {
  @override
  Widget build(BuildContext context) {
     final CountDownController _controller = CountDownController();
    
    final argument = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest Time'),
        centerTitle: true,
      ),
      body:  Center(
        child: CircularCountDownTimer(
          controller: _controller,
            isReverse: true,
            width: 160,
            height: 160,
            duration: argument,
            fillColor: Colors.green,
            ringColor: Colors.blue,
            onComplete: (){
              Navigator.pushNamed(context, '/clock', arguments: widget.timeRound);
             
            },),
      ),
    );
  }
}
