import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';

part 'token_response.g.dart';

@JsonSerializable(checked: true)
class TokenResponse {
  final String token;
  final String refreshToken;

  TokenResponse({
    required this.token,
    required this.refreshToken,
  });

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);

  static Token toDomain(TokenResponse tokenResponse) {
    return Token(
      token: tokenResponse.token,
      refreshToken: tokenResponse.refreshToken,
    );
  }
}
