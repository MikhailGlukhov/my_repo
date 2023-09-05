import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_themovie/Library/widget/inherited/provider.dart';

import 'package:flutter_application_themovie/widgets/movie_details/movie_details_main_screencast_widget.dart';
import 'package:flutter_application_themovie/widgets/movie_details/movie_details_model.dart';

import 'movie_details_main_info_widget.dart';

class MovieDetailsWidget extends StatefulWidget {
 
  const MovieDetailsWidget
  ({super.key, });

  @override
  _MovieDetailsWidget createState() => _MovieDetailsWidget();
 
}

class _MovieDetailsWidget extends State<MovieDetailsWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    NotifierProvider.read<MovieDetailsModel>(context)?.setupLocale(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const _TitleWidget() ,),
        body: const ColoredBox(
          color: Color.fromRGBO(32, 32, 11, 1.0),
          child: _BodyWidget()
        ),
        );
        
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    return   Text(model?.movieDetails?.title ?? 'Загрузка');
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    final movieDetails = model?.movieDetails;
    if(movieDetails == null){
      return const Center(child:  CircularProgressIndicator());
    }
    return ListView(
            children: const [
               MovieDetailsMainInfoWidget(),
               SizedBox(height: 30,),
               MovieDetailsMainScreencastWidget()
            ],
          );
  }
}