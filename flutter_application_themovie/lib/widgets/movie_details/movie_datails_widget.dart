import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/widgets/movie_details/movie_details_main_screencast_widget.dart';

import 'movie_details_main_info_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
  final movieId;
  const MovieDetailsWidget
  ({super.key, required this.movieId});

  @override
  _MovieDetailsWidget createState() => _MovieDetailsWidget();
 
}

class _MovieDetailsWidget extends State<MovieDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Восстание зловещих мертвецов ') ,),
        body: ColoredBox(
          color: Color.fromRGBO(32, 32, 11, 1.0),
          child: ListView(
            children: [
              MovieDetailsMainInfoWidget(),
              SizedBox(height: 30,),
              MovieDetailsMainScreencastWidget()
            ],
          ),
        ),
        );
        
  }
}