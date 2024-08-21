


import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class SettingsService{
  
late Locale currentLocale;
late BuildContext context;

  
  Future<bool> isDarkModelSelected() async {
    final myBox = await Hive.openBox('settings');
    return myBox.get('darkMode') ?? false;
  }
 

  Future<void> setValue(bool value) async {
 final myBox = await Hive.openBox('settings');
 myBox.put('darkMode', value);

  }

 


}