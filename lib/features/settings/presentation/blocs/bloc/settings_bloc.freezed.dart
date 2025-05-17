// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode theme) themeChanged,
    required TResult Function() toggleNotification,
    required TResult Function(String lang) setLanguage,
    required TResult Function() togglePrivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode theme)? themeChanged,
    TResult? Function()? toggleNotification,
    TResult? Function(String lang)? setLanguage,
    TResult? Function()? togglePrivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode theme)? themeChanged,
    TResult Function()? toggleNotification,
    TResult Function(String lang)? setLanguage,
    TResult Function()? togglePrivate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(ToggleNotification value) toggleNotification,
    required TResult Function(SetLanguage value) setLanguage,
    required TResult Function(TogglePrivate value) togglePrivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(ToggleNotification value)? toggleNotification,
    TResult? Function(SetLanguage value)? setLanguage,
    TResult? Function(TogglePrivate value)? togglePrivate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(ToggleNotification value)? toggleNotification,
    TResult Function(SetLanguage value)? setLanguage,
    TResult Function(TogglePrivate value)? togglePrivate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res, SettingsEvent>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res, $Val extends SettingsEvent>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SettingsThemeChangedImplCopyWith<$Res> {
  factory _$$SettingsThemeChangedImplCopyWith(_$SettingsThemeChangedImpl value,
          $Res Function(_$SettingsThemeChangedImpl) then) =
      __$$SettingsThemeChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode theme});
}

/// @nodoc
class __$$SettingsThemeChangedImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SettingsThemeChangedImpl>
    implements _$$SettingsThemeChangedImplCopyWith<$Res> {
  __$$SettingsThemeChangedImplCopyWithImpl(_$SettingsThemeChangedImpl _value,
      $Res Function(_$SettingsThemeChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$SettingsThemeChangedImpl(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$SettingsThemeChangedImpl implements SettingsThemeChanged {
  const _$SettingsThemeChangedImpl(this.theme);

  @override
  final ThemeMode theme;

  @override
  String toString() {
    return 'SettingsEvent.themeChanged(theme: $theme)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsThemeChangedImpl &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsThemeChangedImplCopyWith<_$SettingsThemeChangedImpl>
      get copyWith =>
          __$$SettingsThemeChangedImplCopyWithImpl<_$SettingsThemeChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode theme) themeChanged,
    required TResult Function() toggleNotification,
    required TResult Function(String lang) setLanguage,
    required TResult Function() togglePrivate,
  }) {
    return themeChanged(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode theme)? themeChanged,
    TResult? Function()? toggleNotification,
    TResult? Function(String lang)? setLanguage,
    TResult? Function()? togglePrivate,
  }) {
    return themeChanged?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode theme)? themeChanged,
    TResult Function()? toggleNotification,
    TResult Function(String lang)? setLanguage,
    TResult Function()? togglePrivate,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(ToggleNotification value) toggleNotification,
    required TResult Function(SetLanguage value) setLanguage,
    required TResult Function(TogglePrivate value) togglePrivate,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(ToggleNotification value)? toggleNotification,
    TResult? Function(SetLanguage value)? setLanguage,
    TResult? Function(TogglePrivate value)? togglePrivate,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(ToggleNotification value)? toggleNotification,
    TResult Function(SetLanguage value)? setLanguage,
    TResult Function(TogglePrivate value)? togglePrivate,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class SettingsThemeChanged implements SettingsEvent {
  const factory SettingsThemeChanged(final ThemeMode theme) =
      _$SettingsThemeChangedImpl;

  ThemeMode get theme;
  @JsonKey(ignore: true)
  _$$SettingsThemeChangedImplCopyWith<_$SettingsThemeChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleNotificationImplCopyWith<$Res> {
  factory _$$ToggleNotificationImplCopyWith(_$ToggleNotificationImpl value,
          $Res Function(_$ToggleNotificationImpl) then) =
      __$$ToggleNotificationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleNotificationImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$ToggleNotificationImpl>
    implements _$$ToggleNotificationImplCopyWith<$Res> {
  __$$ToggleNotificationImplCopyWithImpl(_$ToggleNotificationImpl _value,
      $Res Function(_$ToggleNotificationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleNotificationImpl implements ToggleNotification {
  const _$ToggleNotificationImpl();

  @override
  String toString() {
    return 'SettingsEvent.toggleNotification()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleNotificationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode theme) themeChanged,
    required TResult Function() toggleNotification,
    required TResult Function(String lang) setLanguage,
    required TResult Function() togglePrivate,
  }) {
    return toggleNotification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode theme)? themeChanged,
    TResult? Function()? toggleNotification,
    TResult? Function(String lang)? setLanguage,
    TResult? Function()? togglePrivate,
  }) {
    return toggleNotification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode theme)? themeChanged,
    TResult Function()? toggleNotification,
    TResult Function(String lang)? setLanguage,
    TResult Function()? togglePrivate,
    required TResult orElse(),
  }) {
    if (toggleNotification != null) {
      return toggleNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(ToggleNotification value) toggleNotification,
    required TResult Function(SetLanguage value) setLanguage,
    required TResult Function(TogglePrivate value) togglePrivate,
  }) {
    return toggleNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(ToggleNotification value)? toggleNotification,
    TResult? Function(SetLanguage value)? setLanguage,
    TResult? Function(TogglePrivate value)? togglePrivate,
  }) {
    return toggleNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(ToggleNotification value)? toggleNotification,
    TResult Function(SetLanguage value)? setLanguage,
    TResult Function(TogglePrivate value)? togglePrivate,
    required TResult orElse(),
  }) {
    if (toggleNotification != null) {
      return toggleNotification(this);
    }
    return orElse();
  }
}

abstract class ToggleNotification implements SettingsEvent {
  const factory ToggleNotification() = _$ToggleNotificationImpl;
}

/// @nodoc
abstract class _$$SetLanguageImplCopyWith<$Res> {
  factory _$$SetLanguageImplCopyWith(
          _$SetLanguageImpl value, $Res Function(_$SetLanguageImpl) then) =
      __$$SetLanguageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String lang});
}

/// @nodoc
class __$$SetLanguageImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$SetLanguageImpl>
    implements _$$SetLanguageImplCopyWith<$Res> {
  __$$SetLanguageImplCopyWithImpl(
      _$SetLanguageImpl _value, $Res Function(_$SetLanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lang = null,
  }) {
    return _then(_$SetLanguageImpl(
      null == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetLanguageImpl implements SetLanguage {
  const _$SetLanguageImpl(this.lang);

  @override
  final String lang;

  @override
  String toString() {
    return 'SettingsEvent.setLanguage(lang: $lang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLanguageImpl &&
            (identical(other.lang, lang) || other.lang == lang));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLanguageImplCopyWith<_$SetLanguageImpl> get copyWith =>
      __$$SetLanguageImplCopyWithImpl<_$SetLanguageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode theme) themeChanged,
    required TResult Function() toggleNotification,
    required TResult Function(String lang) setLanguage,
    required TResult Function() togglePrivate,
  }) {
    return setLanguage(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode theme)? themeChanged,
    TResult? Function()? toggleNotification,
    TResult? Function(String lang)? setLanguage,
    TResult? Function()? togglePrivate,
  }) {
    return setLanguage?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode theme)? themeChanged,
    TResult Function()? toggleNotification,
    TResult Function(String lang)? setLanguage,
    TResult Function()? togglePrivate,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(ToggleNotification value) toggleNotification,
    required TResult Function(SetLanguage value) setLanguage,
    required TResult Function(TogglePrivate value) togglePrivate,
  }) {
    return setLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(ToggleNotification value)? toggleNotification,
    TResult? Function(SetLanguage value)? setLanguage,
    TResult? Function(TogglePrivate value)? togglePrivate,
  }) {
    return setLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(ToggleNotification value)? toggleNotification,
    TResult Function(SetLanguage value)? setLanguage,
    TResult Function(TogglePrivate value)? togglePrivate,
    required TResult orElse(),
  }) {
    if (setLanguage != null) {
      return setLanguage(this);
    }
    return orElse();
  }
}

abstract class SetLanguage implements SettingsEvent {
  const factory SetLanguage(final String lang) = _$SetLanguageImpl;

  String get lang;
  @JsonKey(ignore: true)
  _$$SetLanguageImplCopyWith<_$SetLanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TogglePrivateImplCopyWith<$Res> {
  factory _$$TogglePrivateImplCopyWith(
          _$TogglePrivateImpl value, $Res Function(_$TogglePrivateImpl) then) =
      __$$TogglePrivateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TogglePrivateImplCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res, _$TogglePrivateImpl>
    implements _$$TogglePrivateImplCopyWith<$Res> {
  __$$TogglePrivateImplCopyWithImpl(
      _$TogglePrivateImpl _value, $Res Function(_$TogglePrivateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TogglePrivateImpl implements TogglePrivate {
  const _$TogglePrivateImpl();

  @override
  String toString() {
    return 'SettingsEvent.togglePrivate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TogglePrivateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ThemeMode theme) themeChanged,
    required TResult Function() toggleNotification,
    required TResult Function(String lang) setLanguage,
    required TResult Function() togglePrivate,
  }) {
    return togglePrivate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ThemeMode theme)? themeChanged,
    TResult? Function()? toggleNotification,
    TResult? Function(String lang)? setLanguage,
    TResult? Function()? togglePrivate,
  }) {
    return togglePrivate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ThemeMode theme)? themeChanged,
    TResult Function()? toggleNotification,
    TResult Function(String lang)? setLanguage,
    TResult Function()? togglePrivate,
    required TResult orElse(),
  }) {
    if (togglePrivate != null) {
      return togglePrivate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsThemeChanged value) themeChanged,
    required TResult Function(ToggleNotification value) toggleNotification,
    required TResult Function(SetLanguage value) setLanguage,
    required TResult Function(TogglePrivate value) togglePrivate,
  }) {
    return togglePrivate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsThemeChanged value)? themeChanged,
    TResult? Function(ToggleNotification value)? toggleNotification,
    TResult? Function(SetLanguage value)? setLanguage,
    TResult? Function(TogglePrivate value)? togglePrivate,
  }) {
    return togglePrivate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsThemeChanged value)? themeChanged,
    TResult Function(ToggleNotification value)? toggleNotification,
    TResult Function(SetLanguage value)? setLanguage,
    TResult Function(TogglePrivate value)? togglePrivate,
    required TResult orElse(),
  }) {
    if (togglePrivate != null) {
      return togglePrivate(this);
    }
    return orElse();
  }
}

abstract class TogglePrivate implements SettingsEvent {
  const factory TogglePrivate() = _$TogglePrivateImpl;
}

/// @nodoc
mixin _$SettingsState {
  ThemeMode get theme => throw _privateConstructorUsedError;
  bool get isShowNotification => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call(
      {ThemeMode theme,
      bool isShowNotification,
      String language,
      bool isPrivate});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? isShowNotification = null,
    Object? language = null,
    Object? isPrivate = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isShowNotification: null == isShowNotification
          ? _value.isShowNotification
          : isShowNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeMode theme,
      bool isShowNotification,
      String language,
      bool isPrivate});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? isShowNotification = null,
    Object? language = null,
    Object? isPrivate = null,
  }) {
    return _then(_$InitialImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      isShowNotification: null == isShowNotification
          ? _value.isShowNotification
          : isShowNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.theme = ThemeMode.system,
      this.isShowNotification = false,
      this.language = "en",
      this.isPrivate = false});

  @override
  @JsonKey()
  final ThemeMode theme;
  @override
  @JsonKey()
  final bool isShowNotification;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final bool isPrivate;

  @override
  String toString() {
    return 'SettingsState(theme: $theme, isShowNotification: $isShowNotification, language: $language, isPrivate: $isPrivate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.isShowNotification, isShowNotification) ||
                other.isShowNotification == isShowNotification) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, isShowNotification, language, isPrivate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SettingsState {
  const factory _Initial(
      {final ThemeMode theme,
      final bool isShowNotification,
      final String language,
      final bool isPrivate}) = _$InitialImpl;

  @override
  ThemeMode get theme;
  @override
  bool get isShowNotification;
  @override
  String get language;
  @override
  bool get isPrivate;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
