// lib/env/env.dart
import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration_interface.dart';

part 'dev_env.g.dart';

@Envied(path: 'assets/env/.dev.env', obfuscate: true)
final class EnvDev implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _EnvDev._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _EnvDev._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
