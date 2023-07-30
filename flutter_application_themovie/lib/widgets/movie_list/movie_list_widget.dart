import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_themovie/domain/api_client/api_client.dart';


import 'package:flutter_application_themovie/widgets/movie_list/movie_list_model.dart';

import '../../Library/widget/inherited/provider.dart';





class MovieListWidget extends StatelessWidget {

   const  MovieListWidget ({Key? key}) :super (key: key);

   

  @override
  Widget build(BuildContext context) {
    
    final model = NotifierProvider.watch<MovieListModel>(context);
    if(model == null) return SizedBox.shrink();
    return  Stack(
      children: [ ListView.builder(
        padding: EdgeInsets.only(top: 70),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: model.movies.length,
        itemExtent: 163,
        itemBuilder: (context, index){ 
          model.showedMovieAtIndex(index);
          final movie =model.movies[index];
          final posterPath = movie.posterPath;
          return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
            child: Stack(
              children: [
                Container(
                 
                  decoration: BoxDecoration(
                    color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.2)),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        )
                      ]
                    ),
                   clipBehavior: Clip.hardEdge,
                    child: Row(children: [
                      posterPath != null
                       ? Image.network(ApiClient.imageUrl(posterPath), width: 95,)
                       : SizedBox.shrink(),
                    
                      const SizedBox(width: 15,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 20,),
                          Text(movie.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: 5,),
                          Text(model.stringFromDate(movie.releaseDate),
                          style: const TextStyle(color: Colors.grey),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,),
                          const SizedBox(height: 20,),
                          Text(movie.overview,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,)
                        ],),
                      ),
                      const SizedBox(width: 10,)
                    ],),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => model.onMovieTab(context, index),
                    )
                      ,
                    ),
                  
              ],
            ),
          );
          
      
        
       
      },),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextField(
          onChanged: model.searchMovie,
          decoration: InputDecoration(
          labelText: 'Поиск',
          filled: true,
          fillColor: Colors.white.withAlpha(235),
          border: OutlineInputBorder()
        ),),
      ),


    ]);
  }
}