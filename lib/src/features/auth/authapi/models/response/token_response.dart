import 'package:json_annotation/json_annotation.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';

part 'token_response.g.dart';

@JsonSerializable(checked: true, createToJson: false)
class TokenResponse extends Token {
  
  const TokenResponse({
    required String token,
    required String refreshToken,
  }) : super(
          token: token,
          refreshToken: refreshToken,
        );

  factory TokenResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenResponseFromJson(json);
}
