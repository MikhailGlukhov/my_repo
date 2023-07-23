import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';

import '../widgets/radial_piersent_widget.dart';

class SerialDetailsMainInfoWidget extends StatelessWidget {
  const SerialDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TopPoster(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: _SerialNameWidget(),

        ),
         _SrcoreSerialWidget (),
         _SummerySerialWidget(),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _TextSerialLogoWidget(),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _OwervieSerialWidget(),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _DisciptionSerialWidget(),
         ),
         Padding(
           padding: const EdgeInsets.all(10.0),
           child: _PeopleSerialWidget(),
         )
        
      ],
    );
   
  }
}
class _TopPoster extends StatelessWidget {
  const _TopPoster({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image(image: AssetImage(AppImage.topKnight.assetName)),
      Positioned(
        top: 20,
        left: 20,
        bottom: 20,

        child: Image(image: AssetImage(AppImage.logoKnight.assetName)))
     
      

     
      
    ],);
  }
}
class _SerialNameWidget extends StatelessWidget {
  const _SerialNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(textAlign: TextAlign.center,
    maxLines: 3,
      text: TextSpan(children: [
                TextSpan(text: '          Рыцарь в чёрном',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ) ),
        TextSpan(text: '(2023)',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w300
        ))
      ])
      );
  }
}
class _SrcoreSerialWidget extends StatelessWidget {
  const _SrcoreSerialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
      SizedBox( width: 50,
          height: 50,
           child: RadialPersentWindget(
            child: Text('77',
            style: TextStyle(color: Colors.white),),
           persent: 0.77,
           fillColor: Color.fromARGB(255, 10, 23, 25),
           freeColor: Color.fromARGB(255, 25, 54, 31),
           lineColor: Color.fromARGB(255, 37, 203, 103),
           lineWidth: 3,
           ),
           ),
           TextButton(onPressed: (){}, child: Text('Рейтинг')),
           Container(
            width: 1,
            height: 15,
            color: Colors.grey,
           ),
           Row(children: [
           Icon(Icons.play_arrow),
           TextButton(onPressed: (){}, child: Text('Воспроизвести трейллер'))
           ],)
     ],
    );
  }
}
class _SummerySerialWidget extends StatelessWidget {
  const _SummerySerialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color.fromRGBO(29, 29, 10, 1),
      child: Padding(padding: EdgeInsets.symmetric(vertical: 10, horizontal:65 ),
      child: Text('15, 2023 НФ и Фэнтези, Боевик и Приключения, драма ',
      textAlign: TextAlign.center,
      maxLines: 3,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
    
      ),),),
    );
  }
}
class _TextSerialLogoWidget extends StatelessWidget {
  const _TextSerialLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('The one hope to overturn the world.',
    textAlign: TextAlign.start,
    style: TextStyle(
      fontSize: 18,
      color: Colors.grey
    ),);
  }
}
class _OwervieSerialWidget extends StatelessWidget {
  const _OwervieSerialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Обзор',
    style: TextStyle(
      color: Colors.white,
      fontSize: 21,
      fontWeight: FontWeight.bold
    ),
    );
  }
}
class _DisciptionSerialWidget extends StatelessWidget {
  const _DisciptionSerialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.',
    style: TextStyle(
      color: Colors.white,
      fontSize: 16
    ),);
  }
}
class _PeopleSerialWidget extends StatelessWidget {
  const _PeopleSerialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    
      children: [
      Column(children: [
        Text('Cho Ui-seok',
        
        style: TextStyle(fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Colors.white),
        ),
        Text('Создатель',
        style: TextStyle(color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w400),)
      ],)
    ],);
  }
}