import 'package:json_annotation/json_annotation.dart';

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
}
