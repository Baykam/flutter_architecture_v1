import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

///Application environment manager class
final class AppEnvironment {
  ///Setup application environment
  AppEnvironment.setup({required AppConfiguration config}) {
    _config = config;
  }

  ///Project is Debug or Normal mode change environment
  AppEnvironment.general() {
    _config = kDebugMode ? EnvDev() : EnvProd();
  }

  static late final AppConfiguration _config;

  ///Networking baseUrl
  static String get baseUrl => _config.baseUrl;

  ///Google maps Api key
  static String get apiKey => _config.apiKey;
}
