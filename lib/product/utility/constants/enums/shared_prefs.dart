///Cache for [SharedPreferences] enums
enum SharedPrefs {
  ///[theme] cache path
  theme('theme_change_this_application'),

  ///[locale] cache path
  locale('locale_this_application'),

  /// [authentication token] local path
  auth('authentication_value_key');

  ///local paths String [value]
  final String value;

  const SharedPrefs(this.value);
}
