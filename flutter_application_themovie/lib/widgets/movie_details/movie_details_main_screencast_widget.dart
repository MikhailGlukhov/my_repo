import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';

class MovieDetailsMainScreencastWidget extends StatelessWidget {
  const MovieDetailsMainScreencastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('В главных ролях', style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),
        ),
        SizedBox(
          height: 240,
          child: Scrollbar(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemExtent: 120,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: DecoratedBox(decoration:BoxDecoration(color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        )
                      ]
                    ) ,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    clipBehavior: Clip.hardEdge,
                    child: Column(children: [
                      Image(image: AssetImage(AppImage.actor.assetName)),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Gabrielle Echols',
                          maxLines: 2,
                          style: TextStyle(fontSize: 16,
                          fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                        Text('Bridget'),
                      
                        ],),
                      )
                      
                   
                    ],),
                  ),
                ),
              );
            },),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: TextButton(onPressed: () {}, child: Text('Полный актёрский и съёмочный состав')),
        )
      ],),);
  }
}