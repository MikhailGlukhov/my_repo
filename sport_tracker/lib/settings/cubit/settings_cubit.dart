
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sport_tracker/settings/service/settings_service.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsService service;
  SettingsCubit(
    this.service,
  ) : super(const SettingsState.brightness(Brightness.light)){
    checkCurrentTheme();
  }

  Future<void> setBrightnessTheme(Brightness brightness) async{
     emit( SettingsState.brightness(brightness));
     await service.setValue(brightness ==Brightness.dark );
     }

  Future<void> checkCurrentTheme()async {
    final brightness = await service.isDarkModelSelected()
    ? Brightness.dark : Brightness.light;
    emit(SettingsState.brightness(brightness));
  }

}
