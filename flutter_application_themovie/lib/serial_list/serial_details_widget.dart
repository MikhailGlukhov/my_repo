import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/serial_list/serial_details_main_info_widget.dart';
import 'package:flutter_application_themovie/serial_list/serial_details_main_screencast_widget.dart';

class SerialDetailWidget extends StatefulWidget {
  final serialId;
  const SerialDetailWidget({super.key,required this.serialId});

  @override
  State<SerialDetailWidget> createState() => _SerialDetailWidgetState();
}

class _SerialDetailWidgetState extends State<SerialDetailWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Рыцарь в чёрном'),
        
        
      ),
      body:  ColoredBox(
        color: Color.fromRGBO(32, 32, 11, 1.0)
        ,
        child: ListView(children: [
        SerialDetailsMainInfoWidget(),
        SerialDetailsMainScreencastWidget()
        ],
      
        ),
      ),);
      
      
    

      
    
  }
}