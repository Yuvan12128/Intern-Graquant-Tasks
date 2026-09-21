import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:skcl_vms/data/constant/api_constant.dart';
import 'package:skcl_vms/data/secure_storage/secure_storage.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState()) {
    // SchedulerBinding.instance.window.onPlatformBrightnessChanged = () {
    //   if (Brightness.dark ==
    //       SchedulerBinding.instance.window.platformBrightness) {
    //     add(ThemeEvent(themeMode: ThemeMode.dark));
    //   } else {
    //     add(ThemeEvent(themeMode: ThemeMode.light));
    //   }
    // };
    on<ThemeToggleEvent>(_toggleTheme);
    on<ThemeInitialEvent>(_themeInitial);
  }
  void _toggleTheme(
    ThemeToggleEvent event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      await SecureStorage().writeSecureData(
        ApiConstant.THEME_MODE,
        event.themeMode.toString().split('.').last,
      );
      emit(ThemeState(themeMode: event.themeMode));
    } catch (err) {
      await SecureStorage().writeSecureData(
        ApiConstant.THEME_MODE,
        ThemeMode.light.toString().split('.').last,
      );
      emit(ThemeState(themeMode: ThemeMode.light));
    }
  }
}

void _themeInitial(
  ThemeInitialEvent event,
  Emitter<ThemeState> emit,
) async {
  try {
    final String? themeInfo =
        await SecureStorage().readSecureData(ApiConstant.THEME_MODE);
    if (themeInfo == null) {
      await SecureStorage().writeSecureData(
        ApiConstant.THEME_MODE,
        ThemeMode.light.toString().split('.').last,
      );
      emit(ThemeState(themeMode: ThemeMode.light));
    } else {
      if (themeInfo == 'dark') {
        emit(ThemeState(themeMode: ThemeMode.dark));
      } else {
        emit(ThemeState(themeMode: ThemeMode.light));
      }
    }
  } catch (err) {
    await SecureStorage().writeSecureData(
      ApiConstant.THEME_MODE,
      ThemeMode.light.toString().split('.').last,
    );
    emit(ThemeState(themeMode: ThemeMode.light));
  }
}
