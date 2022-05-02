import 'package:where_to_go_today/src/features/auth/authapi/models/response/token_response.dart';
import 'package:where_to_go_today/src/features/auth/authapi/models/token.dart';

class TokenDto extends Token {
  TokenDto({
    required String token,
    required String refreshToken,
  }) : super(
          token: token,
          refreshToken: refreshToken,
        );

  factory TokenDto.fromResponseModel(TokenResponse tokenResponse) => TokenDto(
        token: tokenResponse.token,
        refreshToken: tokenResponse.refreshToken,
      );
}
