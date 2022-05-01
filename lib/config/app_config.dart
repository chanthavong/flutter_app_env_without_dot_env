part 'prod_config.dart';
part 'dev_config.dart';
part 'staging_config.dart';

abstract class BaseConfig {
  String get apiHost;
  String get apiKey;
  bool get trackEvent;
  bool get reportError;
}

class Environment {
  factory Environment() {
    return _singleton;
  }

  Environment._internal();

  static final Environment _singleton = Environment._internal();

  static const String prod = 'PROD';
  static const String staging = 'STAGING';
  static const String dev = 'DEV';

  static BaseConfig config = DevConfig();

  static initConfig(String environment) {
    config = _getConfig(environment);
  }

  static BaseConfig _getConfig(String environment) {
    switch (environment) {
      case Environment.prod:
        return ProdConfig();
      case Environment.staging:
        return StagingConfig();
      default:
        return DevConfig();
    }
  }
}

class AppConfig {
  static const String appName = 'Flutter ENV Config without .env';
  static const String appVersion = '1.0.0';
}
