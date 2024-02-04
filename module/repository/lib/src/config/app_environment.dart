import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

///Application environment manager class
final class AppEnvironment {
  ///Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    if (_config == null) {
      _config = config;
    } else {
      throw Exception('AppEnvironment has already been initialized.');
    }
  }

  ///Project is Debug or Normal mode change environment
  AppEnvironment.general() {
    _config = kDebugMode ? EnvDev() : EnvProd();
  }

  static late final AppConfiguration _config;

  // ///Networking baseUrl
  // static String get baseUrl => _config.baseUrl;

  // ///Google maps Api key
  // static String get apiKey => _config.apiKey;
}

enum AppEnvironmentItems {
  baseUrl,
  apiKey;

  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment not initialize for : { $e }');
    }
  }
}
