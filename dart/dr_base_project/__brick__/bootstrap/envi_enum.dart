
/*
SET UP
void main() {
  ourEnvi = EnviEnum.develop;
  ...
}

USE
ourEnvi = EnviEnum.develop;
 */

late EnviEnum ourEnvi;

enum EnviEnum {
  develop(
      code: 0,
      title: "develop",
      config: _BaseUrlConfig(
          baseUrl: "http://192.168.20.51:8088",
      )),
  staging(
      code: 1,
      title: "staging",
      config: _BaseUrlConfig(
          baseUrl: "https://staging-backend.kdmp.net",
      )),
  product(
      code: 2,
      title: "product",
      config: _BaseUrlConfig(
          baseUrl: "https://backend.kdmp.net",
      ));

  const EnviEnum({ required this.code, required this.title, required this.config});

  final int code;
  final String title;
  final _BaseUrlConfig config;

  bool get inDevelopment => this == EnviEnum.develop;
  bool get inStaging => this == EnviEnum.staging;
  bool get inProduction => this == EnviEnum.product;

  String get baseUrl => switch(this) {
    EnviEnum.develop => EnviEnum.develop.config.baseUrl,
    EnviEnum.staging => EnviEnum.staging.config.baseUrl,
    EnviEnum.product => EnviEnum.product.config.baseUrl,
  };

}

class _BaseUrlConfig {
  final String baseUrl;
  const _BaseUrlConfig({required this.baseUrl});
}

extension EnviEnumHelper on EnviEnum {

}


