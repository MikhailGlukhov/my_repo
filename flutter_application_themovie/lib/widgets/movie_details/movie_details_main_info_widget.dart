import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_themovie/domain/api_client/api_client.dart';


import 'package:flutter_application_themovie/widgets/radial_piersent_widget.dart';
import 'package:intl/intl.dart';

import '../../Library/widget/inherited/provider.dart';
import 'movie_details_model.dart';



class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
         Padding(
           padding: EdgeInsets.all(20),
           child: _MovieNameWidget(),
         ),
         _ScoreWidget(),
         _SummeryWidget(),
        
         Padding(
           padding: EdgeInsets.all(10),
           child: _OverwieWidget(),
         ),
         Padding(
           padding: EdgeInsets.all(10),
           child: _TextDiscriptionWidget(),
         ),
         _PeopleWidget()
      ],
    );
  }
}

class _PeopleWidget extends StatelessWidget {
  const _PeopleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
final nameStyle =  const TextStyle(
          color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600);
              final jobeStyle = const TextStyle(
          color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400);


    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text('Lee Cronin', style: nameStyle,),
       Text('Director, Writer', style: jobeStyle,),            
     ],),
     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text('Sam Raimi', style: nameStyle,),
       Text('Characters', style: jobeStyle,)
     ],)
    ],);
  }
}

class _TextDiscriptionWidget extends StatelessWidget {
  const _TextDiscriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    final overview =  model?.movieDetails?.overview ?? '';
    return  Text(overview.toString(),
    style: const TextStyle(
     color: Colors.white,
         fontSize: 16,
         fontWeight: FontWeight.w400));
  }
}

class _OverwieWidget extends StatelessWidget {
  const _OverwieWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Обзор',
    style: TextStyle(
     color: Colors.white,
         fontSize: 21,
         fontWeight: FontWeight.w600));
  }
}



class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    final backdropPath = model?.movieDetails?.backdropPath;
    final posterPath = model?.movieDetails?.posterPath;
    
    return AspectRatio(
      aspectRatio: 390/219,
      child: Stack(children: [
         backdropPath != null ? Image.network(ApiClient.imageUrl(backdropPath)) : const SizedBox.shrink(),
        Positioned(
          top: 20,
          left: 20,
         bottom: 20,
          child: posterPath != null ? Image.network(ApiClient.imageUrl(posterPath)) : const SizedBox.shrink())
      ],
        
      ),
    );
  }
}
class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    var year = model?.movieDetails?.releaseDate?.year.toString();
    year = year !=null ? ' ($year)' : '';
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        maxLines: 3,
        text:  TextSpan(children: [
          TextSpan(text: model?.movieDetails?.title ?? '',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600)),
          TextSpan(text: year,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w400)),
        ]),
      ),
    );
  }
}


class _ScoreWidget extends StatelessWidget {
  

  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    var voteAverage = model?.movieDetails?.voteAverage ?? 0;
    voteAverage = voteAverage * 10;
   


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Row(
        children: [
          SizedBox(
          width: 50,
          height: 50,
           child: RadialPersentWindget(
            persent:voteAverage/100,
           fillColor: const Color.fromARGB(255, 10, 23, 25),
           freeColor: const Color.fromARGB(255, 25, 54, 31),
           lineColor: const Color.fromARGB(255, 37, 203, 103),
           lineWidth: 3,
            child: Text(voteAverage.toStringAsFixed(0),
            style:  const TextStyle(color: Colors.white),),
           ),
         ),
          TextButton(onPressed: () {}, child: const Text ('Рейтинг')),
        ],
      ),
      Container(
        width: 1,
        height: 15,
        color: Colors.grey,
      ),
      Row(
        children: [
          const Icon(Icons.play_arrow),
          TextButton(onPressed: () {}, child: const Text ('Воспроизвести трейлер')),
        ],
      ),

    ],);
  }
  
 
}



class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.watch<MovieDetailsModel>(context);
    if(model ==null) return const SizedBox.shrink();
    var texts = <String>[];
    final releaseDate =  model.movieDetails?.releaseDate;
    if(releaseDate != null){
      texts.add(model.stringFromDate(releaseDate));
    }
    final productionCountries = model.movieDetails?.productionCountries;
    if(productionCountries != null && productionCountries.isNotEmpty){
           
       texts.add('(${productionCountries.first.iso})');
    }
    final runtime =  model.movieDetails?.runtime ?? 0;
    final duration = Duration(minutes:runtime );
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    texts.add('${hours}h ${minutes}m');
    final genres =  model.movieDetails?.genres;
    if(genres != null && genres.isNotEmpty){
      var genresNames = <String>[];
      for (var genr in genres) {
        genresNames.add(genr.name);
        
      }
      texts.add(genresNames.join(', '));
      
    }

    return  ColoredBox(
      color: const Color.fromRGBO(29, 29, 10, 1),
      child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        child: Text(texts.join(' '),
           
        textAlign: TextAlign.center,
        maxLines: 3,
        style: const TextStyle(
          color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400)
        ),
      ),
    );
  }
}
