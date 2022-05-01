part of 'app_config.dart';

class ProdConfig implements BaseConfig {
  @override
  // TODO: implement apiHost
  String get apiHost => 'https://api.example.com';

  @override
  // TODO: implement apiKey
  String get apiKey => '';

  @override
  // TODO: implement reportError
  bool get reportError => true;

  @override
  // TODO: implement trackEvent
  bool get trackEvent => true;
}
