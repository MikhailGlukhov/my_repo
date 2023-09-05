

import 'package:flutter/material.dart';

import 'package:flutter_application_themovie/widgets/authtorization/main_screen/main_screen_widget_model.dart';
import 'package:flutter_application_themovie/widgets/movie_details/movie_details_model.dart';

import '../../Library/widget/inherited/provider.dart';
import '../../serial_list/serial_details_widget.dart';
import '../../widgets/authtorization/auth_model.dart';
import '../../widgets/authtorization/auth_widget.dart';

import '../../widgets/authtorization/main_screen/main_screen_widget.dart';
import '../../widgets/movie_details/movie_datails_widget.dart';

abstract class MainNavigationRoutesNames{
  static const auth = 'auth';
  static const mainScreen = '/';
  static const movieDetails = '/movie_details';
  static const serialDetails = '/serial_details';
}

class MainNavigation{
  String initialRoute(bool isAuth) => isAuth
   ? MainNavigationRoutesNames.mainScreen
   : MainNavigationRoutesNames.auth;
  final routs = <String, Widget Function(BuildContext)>{
     MainNavigationRoutesNames.auth: (context) => NotifierProvider(create: () => AuthModel(),
        child: const AuthWidget()),
        MainNavigationRoutesNames.mainScreen: (context) => NotifierProvider(
          create: () => MainScreenModel(),
           child: const MainScreenWidget())
        
        
  };

  Route<Object> onGenerateRoute(RouteSettings settings){
    switch (settings.name) {
      case MainNavigationRoutesNames.movieDetails:
      final arguments = settings.arguments;
      final movieId = arguments is int ? arguments : 0;
      return MaterialPageRoute(builder: (context) => NotifierProvider(create: () => MovieDetailsModel(movieId), child: const MovieDetailsWidget()));
      case MainNavigationRoutesNames.serialDetails:
      final arguments = settings.arguments;
      final serialId = arguments is int ? arguments : 0;
      return MaterialPageRoute(builder: (context) => SerialDetailWidget(serialId: serialId));
             
      default: const widget = Text('Navigation error');
      return MaterialPageRoute(builder: (context) => widget);
    }
  }

}