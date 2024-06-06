import 'package:flutter/material.dart';

abstract class SettingsRepository {
  const SettingsRepository();

  ThemeMode getThemeMode();
  Future<void> setThemeMode(ThemeMode themeMode);
  bool getIsShowNotification();
  Future<void> toggleShowNotification();
  String getLanguage();
  Future<void> setLanguage(String lang);
  bool getIsPrivate();
  Future<void> toggleIsPrivate();
}
