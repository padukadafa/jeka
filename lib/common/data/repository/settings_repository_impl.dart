import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:jeka/common/data/repository/settings_repository.dart';
import 'package:jeka/core/constants.dart';
import 'package:jeka/core/error.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl extends SettingsRepository {
  final SharedPreferences _sharedPreferences;
  SettingsRepositoryImpl(this._sharedPreferences);
  @override
  Either<Error, ThemeMode> getThemeMode() {
    try {
      final response = _sharedPreferences.getString(AppConstants.THEME_MODE);
      if (response == null) {
        return const Right(ThemeMode.system);
      }
      final result = ThemeMode.values.byName(response);
      return Right(result);
    } catch (e) {
      return const Left(
          CacheError("Failed to get current theme mode from local"));
    }
  }

  @override
  Future<Either<Error, ThemeMode>> setThemeMode(
      String key, ThemeMode themeMode) async {
    try {
      await _sharedPreferences.setString(key, themeMode.name);
      return Right(themeMode);
    } catch (e) {
      return const Left(CacheError("Failed to save thememode"));
    }
  }
}
