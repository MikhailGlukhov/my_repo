import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';
import 'package:flutter_application_themovie/widgets/radial_piersent_widget.dart';



class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPosterWidget(),
         Padding(
           padding: const EdgeInsets.all(20),
           child: _MovieNameWidget(),
         ),
         _ScoreWidget(),
         _SummeryWidget(),
         Padding(
           padding: const EdgeInsets.all(10),
           child: _TextLogoWidget(),
         ),
         Padding(
           padding: const EdgeInsets.all(10),
           child: _OverwieWidget(),
         ),
         Padding(
           padding: const EdgeInsets.all(10),
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
final nameStyle =  TextStyle(
          color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600);
              final jobeStyle = TextStyle(
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
    return Text('Во время встречи двух сестёр появляются зловещие демоны, и теперь, чтобы остаться на этом свете, девушкам придётся очень сильно постараться.',
    style: TextStyle(
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
    return Text('Обзор',
    style: TextStyle(
     color: Colors.white,
         fontSize: 21,
         fontWeight: FontWeight.w600));
  }
}

class _TextLogoWidget extends StatelessWidget {
  const _TextLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('«Мамочка любит тебя до смерти»',
    style: TextStyle(
     color: Colors.grey,
         fontSize: 17.5,
         fontWeight: FontWeight.w400));
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(image: AssetImage(AppImage.tophead.assetName)),
      Positioned(
        top: 20,
        left: 20,
       bottom: 20,
        child: Image(image: AssetImage(AppImage.logo.assetName)))
    ],
      
    );
  }
}
class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
      text: TextSpan(children: [
        TextSpan(text: 'Восстание зловещих мертвецов ',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600)),
        TextSpan(text: ' (2023)',
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400)),
      ]),
    );
  }
}


class _ScoreWidget extends StatelessWidget {
  

  const _ScoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Row(
        children: [
         SizedBox(
          width: 50,
          height: 50,
           child: RadialPersentWindget(
            child: Text('71',
            style: TextStyle(color: Colors.white),),
           persent: 0.71,
           fillColor: Color.fromARGB(255, 10, 23, 25),
           freeColor: Color.fromARGB(255, 25, 54, 31),
           lineColor: Color.fromARGB(255, 37, 203, 103),
           lineWidth: 3,
           ),
         ),
          TextButton(onPressed: () {}, child: Text ('Рейтинг')),
        ],
      ),
      Container(
        width: 1,
        height: 15,
        color: Colors.grey,
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          TextButton(onPressed: () {}, child: Text ('Воспроизвести трейлер')),
        ],
      ),

    ],);
  }
  
 
}



class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(29, 29, 10, 1),
      child: Padding(
       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 65),
        child: Text('16,  20/04/2023 (NL) триллер, ужасы, фэнтези 1h 37m',
           
        textAlign: TextAlign.center,
        maxLines: 3,
        style: TextStyle(
          color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w400)
        ),
      ),
    );
  }
}
