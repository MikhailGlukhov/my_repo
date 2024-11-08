
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sport_tracker/gen/assets.gen.dart';

import 'package:sport_tracker/settings/cubit/settings_cubit.dart';


import 'package:sport_tracker/settings/settings_switch.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});


  @override
  Widget build(BuildContext context) {
     final brightness = context.watch<SettingsCubit>().state.brightness;
     
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title:  Text(
              'Settings'.tr(),
            ),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SettingsSwitch(
                title: 'Dark Theme'.tr(),
                value: brightness == Brightness.dark,
                onChanged: (value) {
                  context.read<SettingsCubit>().setBrightnessTheme(value ? Brightness.dark : Brightness.light);
                                  
                  
                },
              ),
             
             const  SizedBox(height: 20,),
              Text('Localization'.tr()),
             const SizedBox(height: 20,),
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ ElevatedButton(onPressed: () async{
                final myBox = await Hive.openBox('settings');
                myBox.put('locale', 'RU');
                EasyLocalization.of(context)!.setLocale(const Locale('ru', 'RU'));
              }, child: Image.asset(Assets.icons.ru.path, height: 40,width: 40,)),
               ElevatedButton(onPressed: () async{
                 final myBox = await Hive.openBox('settings');
                myBox.put('locale', 'EN');
                EasyLocalization.of(context)!.setLocale(const Locale('en', 'US'));
              }, child: Image.asset(Assets.icons.en.path, height: 40,width: 40,)),],),
        
             
              
            ],
          )),
        );
      },
    );
  }
}
