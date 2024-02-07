part of 'settings_bloc.dart';

class SettingsState extends Equatable {
  const SettingsState({required this.theme, required this.locale});

  final ThemeData theme;
  final Locale locale;

  @override
  List<Object?> get props => [theme, locale];

  SettingsState copyWith({
    required ThemeData? theme,
    required Locale? locale,
  }) {
    return SettingsState(
      theme: theme ?? this.theme,
      locale: locale ?? this.locale,
    );
  }
}
