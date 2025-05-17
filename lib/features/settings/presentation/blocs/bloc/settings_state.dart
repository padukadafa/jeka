part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default(ThemeMode.system) ThemeMode theme,
    @Default(false) bool isShowNotification,
    @Default("en") String language,
    @Default(false) bool isPrivate,
  }) = _Initial;
}
