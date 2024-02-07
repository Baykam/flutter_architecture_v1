part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();
}

final class ChangeTheme extends SettingsEvent {
  const ChangeTheme(this.theme);
  final ThemeChangeEnum theme;

  @override
  List<Object?> get props => [theme];
}

final class ChangeLocale extends SettingsEvent {
  const ChangeLocale(this.lang);

  final Locales lang;

  @override
  List<Object?> get props => [lang];
}
