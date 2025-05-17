part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.themeChanged(ThemeMode theme) =
      SettingsThemeChanged;
  const factory SettingsEvent.toggleNotification() = ToggleNotification;
  const factory SettingsEvent.setLanguage(String lang) = SetLanguage;
  const factory SettingsEvent.togglePrivate() = TogglePrivate;
}
