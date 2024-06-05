import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:jeka/core/error.dart';

abstract class SettingsRepository {
  const SettingsRepository();

  Either<Failure, ThemeMode> getThemeMode();
  Future<Either<Failure, ThemeMode>> setThemeMode(
      String key, ThemeMode themeMode);
}
