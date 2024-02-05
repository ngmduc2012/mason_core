
enum Environment { kDEVELOPMENT, kSTAGING, kPRODUCTION }

extension EnvironmentHelper on Environment{

  String get baseUrl => _config.baseUrl;

  _BaseUrlConfig get _config {
     switch (this) {
      case Environment.kDEVELOPMENT:
        return development;
      case Environment.kSTAGING:
        return staging;
      case Environment.kPRODUCTION:
        return production;
      default:
        return staging;
    }
  }

  _BaseUrlConfig get development => _BaseUrlConfig(baseUrl: "http://test.nailpoppro.net:9090");
  _BaseUrlConfig get staging => _BaseUrlConfig(baseUrl: "http://test.nailpoppro.net:9090");
  _BaseUrlConfig get production => _BaseUrlConfig(baseUrl: "https://user.nailpoppro.net");

}

class _BaseUrlConfig {
  final String baseUrl;
  _BaseUrlConfig({required this.baseUrl});
}

class OurNetwork{
  Environment _envi = Environment.kDEVELOPMENT;

  void setEnvi(Environment envi) => _envi = envi;

  Environment get envi => _envi;

}