import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/features/settings/data/repository/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl extends SettingsRepository {
  final SharedPreferences _sharedPreferences;
  SettingsRepositoryImpl(this._sharedPreferences);
  @override
  ThemeMode getThemeMode() {
    final response = _sharedPreferences.getString(AppConstants.THEME_MODE);
    if (response == null) {
      return ThemeMode.system;
    }
    final result = ThemeMode.values.byName(response);
    return result;
  }

  @override
  Future<void> setThemeMode(ThemeMode themeMode) async {
    await _sharedPreferences.setString(AppConstants.THEME_MODE, themeMode.name);
  }

  @override
  bool getIsShowNotification() {
    final result =
        _sharedPreferences.getBool(AppConstants.IS_SHOW_NOTIFICATION);
    return result ?? false;
  }

  @override
  Future<void> toggleShowNotification() async {
    final current =
        _sharedPreferences.getBool(AppConstants.IS_SHOW_NOTIFICATION) ?? false;
    await _sharedPreferences.setBool(
        AppConstants.IS_SHOW_NOTIFICATION, !current);
  }

  @override
  bool getIsPrivate() {
    final result = _sharedPreferences.getBool(AppConstants.IS_PRIVATE) ?? false;
    return result;
  }

  @override
  String getLanguage() {
    final result = _sharedPreferences.getString(AppConstants.LANGUAGE) ?? "en";
    return result;
  }

  @override
  Future<void> setLanguage(String lang) async {
    await _sharedPreferences.setString(AppConstants.LANGUAGE, lang);
  }

  @override
  Future<void> toggleIsPrivate() async {
    final current =
        _sharedPreferences.getBool(AppConstants.IS_PRIVATE) ?? false;
    await _sharedPreferences.setBool(AppConstants.IS_PRIVATE, !current);
  }
}
