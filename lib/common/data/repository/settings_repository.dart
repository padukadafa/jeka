import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:jeka/core/error.dart';

abstract class SettingsRepository {
  const SettingsRepository();

  Either<Error, ThemeMode> getThemeMode();
  Future<Either<Error, ThemeMode>> setThemeMode(
      String key, ThemeMode themeMode);
}
