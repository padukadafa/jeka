import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/features/settings/data/repository/settings_repository.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@singleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final SettingsRepository _settingsRepository;
  SettingsBloc(this._settingsRepository)
      : super(
          SettingsState(
            theme: _settingsRepository.getThemeMode(),
            isShowNotification: _settingsRepository.getIsShowNotification(),
            language: _settingsRepository.getLanguage(),
          ),
        ) {
    on<SettingsThemeChanged>(_onSettingsThemeChanged);
    on<ToggleNotification>(_onToggleNotification);
    on<TogglePrivate>(_onTogglePrivate);
    on<SetLanguage>(_onSetLanguage);
  }

  _onSettingsThemeChanged(
      SettingsThemeChanged event, Emitter<SettingsState> emit) async {
    await _settingsRepository.setThemeMode(event.theme);
    emit(state.copyWith(theme: event.theme));
  }

  _onToggleNotification(
      ToggleNotification event, Emitter<SettingsState> emit) async {
    await _settingsRepository.toggleShowNotification();
    final current = _settingsRepository.getIsShowNotification();
    emit(state.copyWith(isShowNotification: current));
  }

  _onTogglePrivate(TogglePrivate event, Emitter<SettingsState> emit) async {
    await _settingsRepository.toggleIsPrivate();
    final current = await _settingsRepository.getIsPrivate();
    emit(state.copyWith(isPrivate: current));
  }

  _onSetLanguage(SetLanguage event, Emitter<SettingsState> emit) async {
    await _settingsRepository.setLanguage(event.lang);
    final current = _settingsRepository.getLanguage();
    emit(state.copyWith(language: current));
  }
}
