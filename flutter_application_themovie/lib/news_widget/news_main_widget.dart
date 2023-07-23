import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_application_themovie/image.dart';


class NewsMainWidget extends StatefulWidget {
  const NewsMainWidget({super.key});

  @override
  State<NewsMainWidget> createState() => _NewsMainWidgetState();
}

class _NewsMainWidgetState extends State<NewsMainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [Stack(
        children:[ Image(image: AssetImage(AppImage.news.assetName)),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              
            children: [
            Text('Добро пожаловать.',
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white),),
            Text('Миллионы фильмов, сериалов и людей. Исследуйте сейчас.',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: Colors.white))
                ],),
          ),]
      ),
      const SizedBox(height: 10,),
      const Text('Популярные фильмы', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold )),
      const FilmsWidget(),
      const SizedBox(height: 10,),
      const Text('Популярные сериалы', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold )),
      const SizedBox(height: 10,),
      const SerialWidget()
      ]
    ),);
  }
}



class Movie {
  final int id;
   final String imageName;
  final String title;
  final String time;
  final String discription;

  Movie( {required this.id,required this.imageName, required this.title, required this.time, required this.discription});




}

class FilmsWidget extends StatefulWidget {
  const FilmsWidget({
    super.key,
  });

  @override
  State<FilmsWidget> createState() => _FilmsWidgetState();
}

class _FilmsWidgetState extends State<FilmsWidget> {

final _movies =[Movie(
  id: 1,
  imageName: AppImage.evildead.assetName,
 title: 'Evil Dead Rise',
  time: '12 april 2023',
   discription: 'Во время встречи двух сестёр появляются зловещие демоны, и теперь, чтобы остаться на этом свете'),
   Movie(
    id: 2,
  imageName: AppImage.evildead.assetName,
 title: 'Братья супер Марио в кино',
  time: '5 april 2023',
  discription: 'Анимационный фильм, основанный на компьютерной игре Super Mario Bros. Работая под землей над ремонтом водопровода, бруклинские сантехники — братья Марио и Луиджи — спускаются по таинственной трубе и попадают в волшебный новый мир. Но когда братья разлучаются, Марио отправляется в эпическое путешествие, чтобы найти Луиджи.'),
   Movie(
    id: 3,
  imageName: AppImage.evildead.assetName,
 title: 'Человек-муравей и Оса: Квантомания',
  time: '15 february 2023',
   discription: 'О приключениях бывшего мелкого преступника Скотта Лэнга, ставшего обладателем костюма, позволяющего уменьшаться и увеличиваться в размерах. Вместе с напарницей Хоуп ван Дайн, дочерью известного физика и энтомолога Хэнка Пима, разработавшего костюм человека-муравья, Скотт вновь спасает мир от предстоящей угрозы.'),
   Movie(
    id: 4,
  imageName: AppImage.evildead.assetName,
 title: 'Экзорцист Ватикана',
  time: '5 april 2023',
   discription: 'В поисках причин жуткой одержимости маленького мальчика экзорцист Габриэле Аморт узнаёт и раскрывает многовековой заговор, который Ватикан отчаянно пытался скрыть.'),
   Movie(
    id: 5,
  imageName: AppImage.evildead.assetName,
 title: 'Форсаж 10',
  time: '17 may 2023',
   discription: 'Дом Торетто и его семья становятся мишенью для мстительного сына наркобарона Эрнана Рейеса.'),
   Movie(
    id: 6,
  imageName: AppImage.evildead.assetName,
 title: 'Стражи Галактики. Часть 3',
  time: '3 may 2023',
   discription: 'Питер Квилл никак не может смириться с потерей Гаморы и теперь вместе со Стражами Галактики вынужден отправиться на очередную миссию по защите Вселенной.'),
   Movie(
    id: 7,
  imageName: AppImage.evildead.assetName,
 title: 'Без ответа',
  time: '18 april 2023',
   discription: 'Коул влюбляется в загадочную Сэди, но выясняется, что она секретный агент. Прежде чем они успевают пойти на второе свидание, Коул и Сэди отправляются в приключение, чтобы спасти мир.'),
   Movie(
    id: 8,
  imageName: AppImage.evildead.assetName,
 title: 'Аватар: Путь воды',
  time: '14 december 2023',
   discription: 'После принятия образа аватара солдат Джейк Салли становится предводителем народа на’ви и берёт на себя миссию по защите новых друзей от корыстных бизнесменов с Земли. Теперь ему есть за кого бороться — с Джейком его прекрасная возлюбленная Нейтири. Когда на Пандору возвращаются до зубов вооружённые земляне, Джейк готов дать им отпор.'),
   Movie(
    id: 9,
  imageName: AppImage.evildead.assetName,
 title: 'Шазам! Ярость богов',
  time: '15 may 2023',
   discription: '17-летний Билли Бэтсон, получивший дар превращаться в супергероя лет сорока, охраняет покой жителей Филадельфии вместе со своими приёмными братьями и сестрами, с которыми он поделился суперспособностями. В силу юности и недостатка дисциплины не всё у них получается идеально, и пресса называет команду супергероев «Филадельфийскими фиаско». Тем временем две женщины, представляющиеся дочерьми титана Атланта, крадут из греческого музея сломанный пополам волшебный жезл и направляются в Филадельфию, чтобы отобрать у супергероев магические силы.'),
   Movie(
    id: 10,
  imageName: AppImage.evildead.assetName,
 title: 'Переводчик',
  time: '19 april 2023',
   discription: 'Джон Кинли не помнит, как выжил, попав в окружение врага в Афганистане, но понимает, что обязан жизнью местному переводчику по имени Ахмед. Именно ему удалось отбить раненого Кинли и на себе вытащить через опасную территорию. Теперь чувство долга не даёт Джону покоя и он решает рискнуть всем, чтобы вернуться за Ахмедом и его семьёй. На обоих объявлена охота, действовать приходится в одиночку, но он понимает, что не может бросить своего товарища в беде...'),
   ];




  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 260,
      child: Scrollbar(child: ListView.builder(scrollDirection: Axis.horizontal,
      itemCount: _movies.length,
      itemExtent: 120,
         itemBuilder: (context, index) {
            final movie = _movies[index];
           return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(decoration: BoxDecoration(color: Colors.white,
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                boxShadow:[ const BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  offset: Offset(0, 2)
                )]),clipBehavior: Clip.hardEdge,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Image(image: AssetImage(AppImage.evildead.assetName)),
                  const SizedBox(height: 5),
                  Text(movie.title,maxLines: 2,style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                  const SizedBox(height: 5),
                  Text(movie.time,style: const TextStyle(color: Colors.grey, fontSize: 16),)
                ],),
                ),);
       
                  
       
         },
        
        
         
        
      )),
    );
  }
}

class Serial{
  final int id;
  final String imageName;
  final String title;
  final String time;
  final String discription;

  Serial({required this.id,required this.imageName,required this.title,required this.time,required this.discription});
}


class SerialWidget extends StatefulWidget {
  const SerialWidget({
    super.key,
  });

  @override
  State<SerialWidget> createState() => _SerialWidgetState();
}


class _SerialWidgetState extends State<SerialWidget> {
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

  



  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 260,
      child: Scrollbar(child: ListView.builder(scrollDirection: Axis.horizontal,
      itemCount: _serials.length,
      itemExtent: 120,
         itemBuilder: (context, index) {
          final serial =_serials[index];
           return Padding(
                padding: const EdgeInsets.all(10.0),
                
                  child: Container(decoration: BoxDecoration(color: Colors.white,
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow:[ const BoxShadow(
                    color: Colors.black,
                    blurRadius: 8,
                    offset: Offset(0, 2)
                  )]),clipBehavior: Clip.hardEdge,
                  
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    
                      children: [
                      Image(image: AssetImage(AppImage.knight.assetName)),
                      const SizedBox(height: 5),
                      Text(serial.title,maxLines: 3, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                      const SizedBox(height: 5),
                      Text(serial.time, style: const TextStyle(color: Colors.grey, fontSize: 16),)
                    ],),
                  
                  ),
                );
       
                  
       
         },)));
  }
}