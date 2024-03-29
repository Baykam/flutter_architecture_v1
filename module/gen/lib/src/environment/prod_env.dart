// lib/env/env.dart
import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration_interface.dart';

part 'prod_env.g.dart';

@Envied(path: 'assets/env/.prod.env', obfuscate: true)
final class EnvProd implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _EnvProd._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _EnvProd._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
