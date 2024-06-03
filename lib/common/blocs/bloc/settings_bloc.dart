import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/common/data/repository/settings_repository.dart';
import 'package:jeka/core/constants.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@singleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepository;
  SettingsBloc(this._settingsRepository)
      : super(SettingsState(
            theme: _settingsRepository
                .getThemeMode()
                .fold((l) => ThemeMode.system, (r) => r))) {
    on<SettingsThemeChanged>(_onSettingsThemeChanged);
  }

  _onSettingsThemeChanged(
      SettingsThemeChanged event, Emitter<SettingsState> emit) async {
    final result = await _settingsRepository.setThemeMode(
        AppConstants.THEME_MODE, event.theme);
    result.fold(
      (l) => debugPrint(l.message),
      (r) => emit(state.copyWith(theme: event.theme)),
    );
  }
}
