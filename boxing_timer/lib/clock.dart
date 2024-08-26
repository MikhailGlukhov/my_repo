// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:boxing_timer/rest.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_timer_widget/flutter_timer_widget.dart';
import 'package:flutter_timer_widget/timer_controller.dart';
//import 'package:flutter_timer_widget/timer_controller.dart';
//import 'package:flutter_timer_widget/timer_style.dart';

class ClockWidget extends StatefulWidget {
  final int timeRest;

  final int timeRound;
 
  
  const ClockWidget({
    Key? key,
    
    required this.timeRound, required this.timeRest,
  }) : super(key: key);

  @override
  State<ClockWidget> createState() => _ClockWidgetState();
}

class _ClockWidgetState extends State<ClockWidget> {
  
  @override
  Widget build(BuildContext context) {
    //final int? timeRound = ModalRoute.of(context)?.settings.arguments as int?;
    final CountDownController _controller = CountDownController();
    final argument = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;
   
  
    
   
   
            int n = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Clock'),
        centerTitle: true,
      ),
      body:  Center(
          child: /* FlutterTimer(
            duration: const Duration(minutes: 1),
            onFinished: () {},
            timerController: TimerController(
              elevation: 4,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(8.0),
              background: Colors.orange,
              timerStyle: TimerStyle.circular,
              timerTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 30),
              subTitleTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 12),
            )) ,*/
              CircularCountDownTimer(
        width: 160,
        height: 160,
        duration: widget.timeRound,
        fillColor: Colors.red,
        ringColor: Colors.green,
        isReverse: true,
        controller: _controller,
        onStart: () {
          _controller.restart(duration: argument);
        },
       
        
       
       
       onComplete: () {
       // do{
       // _controller.restart(duration: widget.timeRest);
        
        
       // n++;
       // } while(n < 5);

         // Navigator.popAndPushNamed(context, '/clock/rest',arguments: widget.timeRest);
         Navigator.pushNamed(context, '/clock/rest',arguments: widget.timeRest);
         
        }
         
       ,
      )),
    );
  }
}
