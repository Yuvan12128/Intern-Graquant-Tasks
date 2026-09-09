class AuthInfo {
  final String accessToken;
  final String refreshToken;
  final int expiresIn;
  final String tokenExpiryPeriod;

  AuthInfo({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
    required this.tokenExpiryPeriod,
  });

  factory AuthInfo.fromJson(dynamic jsonObject) {
    return AuthInfo(
      accessToken: jsonObject['accessToken'] as String,
      refreshToken: jsonObject['refreshToken'] as String,
      expiresIn: jsonObject['expiresIn'] as int,
      tokenExpiryPeriod: jsonObject['tokenExpiryPeriod'] as String,
    );
  }

  @override
  String toString() {
    return '{ "accessToken":"${this.accessToken}", "refreshToken":"${this.refreshToken}", "expiresIn":${this.expiresIn}, "tokenExpiryPeriod":"${this.tokenExpiryPeriod}" }';
  }
}
