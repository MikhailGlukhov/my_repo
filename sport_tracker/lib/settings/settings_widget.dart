
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
             Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [ ElevatedButton(onPressed: (){
                
                EasyLocalization.of(context)!.setLocale(Locale('ru', 'RU'));
              }, child: Text('    RU    ')),
               ElevatedButton(onPressed: (){
                
                EasyLocalization.of(context)!.setLocale(Locale('en', 'US'));
              }, child: Text('    EN    ')),],),
        
             
              
            ],
          )),
        );
      },
    );
  }
}
