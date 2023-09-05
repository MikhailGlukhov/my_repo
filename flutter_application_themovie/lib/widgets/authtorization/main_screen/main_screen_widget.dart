import 'package:flutter/material.dart';


import 'package:flutter_application_themovie/domain/session_providers/session_data_provider.dart';
import 'package:flutter_application_themovie/widgets/authtorization/main_screen/main_screen_widget_model.dart';
import 'package:flutter_application_themovie/widgets/movie_list/movie_list_model.dart';

import '../../../Library/widget/inherited/provider.dart';
import '../../../news_widget/news_main_widget.dart';

import '../../../serial_list/serial_list_widget.dart';
import '../../movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
int _selectedTub = 0;
final movieListModel = MovieListModel();

  




void onSelectedTub(int index){
  if(_selectedTub == index) return;
setState(() {
  _selectedTub = index;
});
}


  @override
  void didChangeDependencies() {
 
    super.didChangeDependencies();
    movieListModel.setupLocale(context);
   
   
     
  }


  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.read<MainScreenModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('TMDB') ,
        actions: [
          IconButton(
            onPressed: () => SessionDataProvider().setSessionId(null),
             icon: const Icon(Icons.search))],),
        body: IndexedStack(
          index: _selectedTub,
          children: [const NewsMainWidget(),
      NotifierProvider(create:()=> movieListModel, isManagingModel: false, child: const MovieListWidget()),
     
   
      SerialListWidget()

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTub,
          items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Новости'),
           const BottomNavigationBarItem(icon: Icon(Icons.movie_creation),
          label: 'Фильмы'),
           const BottomNavigationBarItem(icon: Icon(Icons.tv),
          label: 'Сериалы'),
          


        ],
        onTap:onSelectedTub ,)
       
       
            
            );
       
    
  }
}