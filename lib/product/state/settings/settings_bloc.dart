import 'package:architecture_template/product/init/theme/index.dart';
import 'package:architecture_template/product/utility/constants/enums/locales.dart';
import 'package:architecture_template/product/utility/constants/enums/shared_prefs.dart';
import 'package:architecture_template/product/utility/constants/enums/theme.dart';
import 'package:core/core.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'settings_event.dart';
part 'settings_state.dart';

///Settings Bloc for use app when start [Locale] and [ThemeData]
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// default bloc instances theme [CustomLightTheme().themeData]
  /// and locale [Locale('en')]
  SettingsBloc()
      : super(
          _loadInitialSettings(),
        ) {
    on<ChangeTheme>(_onChangeTheme);
    on<ChangeLocale>(_onChangeLocale);
  }

  static SettingsState _loadInitialSettings() {
    final cachedTheme = SharedManager.i.getString(SharedPrefs.theme.value);
    final cachedLocale = SharedManager.i.getString(SharedPrefs.locale.value);
    final initialTheme = cachedTheme != null
        ? _getThemeFromName(cachedTheme)
        : CustomLightTheme().themeData;

    final initialLocale =
        cachedLocale != null ? Locale(cachedLocale) : const Locale('en');
    return SettingsState(
      theme: initialTheme,
      locale: initialLocale,
    );
  }

  Future<void> _onChangeTheme(
    ChangeTheme event,
    Emitter<SettingsState> emit,
  ) async {
    await SharedManager.i.saveString(SharedPrefs.theme.value, event.theme.name);
    final newThemeData = _getThemeFromName(event.theme.name);

    emit(
      state.copyWith(theme: newThemeData, locale: state.locale),
    );
  }

  static ThemeData _getThemeFromName(String themeName) {
    if (themeName == ThemeChangeEnum.light.name) {
      return CustomLightTheme().themeData;
    }
    if (themeName == ThemeChangeEnum.dark.name) {
      return CustomDarkTheme().themeData;
    }

    if (themeName == ThemeChangeEnum.auto.name) {
      return CustomLightTheme().themeData;
    }
    return CustomLightTheme().themeData;
  }

  Future<void> _onChangeLocale(
    ChangeLocale event,
    Emitter<SettingsState> emit,
  ) async {
    await SharedManager.i.saveString(
      SharedPrefs.locale.value,
      event.lang.locale.languageCode,
    );

    emit(
      state.copyWith(
        theme: state.theme,
        locale: event.lang.locale,
      ),
    );
  }
}
