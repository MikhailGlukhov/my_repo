import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';

class SerialDetailsMainScreencastWidget extends StatelessWidget {
  const SerialDetailsMainScreencastWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(10.0),
          child: Text('Актёрский состав сериала',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400),),),

          SizedBox(height: 10,),
          SizedBox(height: 240,
            child: Scrollbar(
              child: ListView.builder(scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemExtent: 120,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ BoxShadow(
                    color: Colors.black,
                    blurRadius: 8,
                    offset: const Offset(0, 2)
                  )]),
                  
                    child: Column(children: [
                      Image(image: AssetImage(AppImage.actorKnight.assetName)),
                      
                     
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text('Kang Yoo-seok',
                        
                        maxLines: 2,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
                        SizedBox(height: 5,),
                        Text('Sawol'),
                        SizedBox(height: 5,),
                        Text('6 эпизодов',
                        style: TextStyle(color: Colors.grey),)
                        ],),
                      )
                      
                              
                    ],),
                  ),
                );
              }),
            ),
          ),
          Padding(padding: EdgeInsets.all(3),
          child: TextButton(onPressed: () {},
          child: Text('Полный актёрский и съёмочный состав',style: TextStyle(color: Colors.black, fontSize: 16),),),)
      
      ],),
    );
  }
}