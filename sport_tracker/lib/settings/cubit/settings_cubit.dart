import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.dart';
part 'settings_cubit.freezed.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState.brightness(Brightness.light));

  void setBrightnessTheme(Brightness brightness) => emit( SettingsState.brightness(brightness));

}
