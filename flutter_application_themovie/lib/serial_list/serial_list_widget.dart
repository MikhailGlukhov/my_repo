import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';

import '../ui/navigation/main_navigation.dart';

class Serial{
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String discription;

  Serial({required this.id,required this.imageName,required this.title,required this.time,required this.discription});
}



class SerialListWidget extends StatefulWidget {
 SerialListWidget({Key? key}) :super (key: key);

  @override
  State<SerialListWidget> createState() => _SerialListWidgetState();
}

class _SerialListWidgetState extends State<SerialListWidget> {

final _serials = [Serial(
  id: 1,
   imageName: AppImage.knight.assetName,
    title: 'Рыцарь в чёрном',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 2,
   imageName: AppImage.knight.assetName,
    title: 'Сладкоежка',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 3,
   imageName: AppImage.knight.assetName,
    title: 'Анатомия страсти',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 4,
   imageName: AppImage.knight.assetName,
    title: 'Целую , Китти',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 5,
   imageName: AppImage.knight.assetName,
    title: 'Симпсоны',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 6,
   imageName: AppImage.knight.assetName,
    title: 'Укрытие',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 7,
   imageName: AppImage.knight.assetName,
    title: 'Флэш',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 8,
   imageName: AppImage.knight.assetName,
    title: 'Цитадель',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 9,
   imageName: AppImage.knight.assetName,
    title: 'Хороший доктор',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.'),
      Serial(
  id: 10,
   imageName: AppImage.knight.assetName,
    title: 'Любовь и смерть',
     time: '12 мая 2023',
      discription: 'В будущем загрязнение окружающей среды достигло такого уровня, что люди почти не выходят на улицу и зависят от доставки. В это непростое время важную роль играют курьеры, которым ещё и приходится защищать посылки от нападок грабителей.')];

   var _filterSerials = <Serial>[];
  final _serchSerialsController = TextEditingController();


  void _serchSerials() {
    final serch = _serchSerialsController.text;
    if(serch.isNotEmpty){
      _filterSerials = _serials.where((Serial serial) {
        return serial.title.toLowerCase().contains(serch.toLowerCase());
      }).toList();
      
    }
    else{
      _filterSerials = _serials;
    }
    setState(() {
      
    });
  }

  @override
  void initState() {
   
    super.initState();
    _filterSerials =_serials;
      _serchSerialsController.addListener(_serchSerials);
    
  }
void _onSerialTab(int index){
  final id = _serials[index].id;
  Navigator.of(context).pushNamed(MainNavigationRoutesNames.serialDetails, arguments: id);

}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          padding: EdgeInsets.only(top:70),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: _filterSerials.length,
          itemExtent: 163,
          itemBuilder: (context, index) {
            final serial =_filterSerials[index];
           return  Padding(padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            
             child: Stack(
               children: [
                 Container (
          
                 
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow:  [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                )
                              ]
                    ),
                    clipBehavior: Clip.hardEdge,
                    
                   child: Row(children: [
                    Image(image: AppImage.knight),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const SizedBox(height: 15,),
                      Text(serial.title,
                      maxLines: 1,
                      style: TextStyle(
                                    fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),),
                        const SizedBox(height: 5,),
                        Text(serial.time,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                         color: Colors.grey
                        )
                        ),
                        const SizedBox(height: 15,),
                        Text(serial.discription,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,) 
                        ]
                         )
                          )
                          ]
                          ),
                 ),
                 Material(
                  color: Colors.transparent,
                   child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: ()=> _onSerialTab(index),
                     
                   
                   ),
                 )
               ],
             ),
           );
           }),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: TextField(
              controller: _serchSerialsController,
              decoration: InputDecoration(
                labelText: 'Поиск',
                filled:  true,
                fillColor: Colors.white.withAlpha(235),
                border: OutlineInputBorder()
                
              ),
             ),
           )
      ],
    );
      
                   
             
  }
    
  }
  